import 'dart:async';
import 'dart:convert';

import 'package:fireverse/auth/client.dart';
import 'package:fireverse/auth/token_store.dart';

import 'exceptions.dart';

const _tokenExpirationThreshold = Duration(seconds: 30);

class FireDartTokenProvider {
  final FireDartKeyClient client;
  final FireDartTokenStore _tokenStore;

  final StreamController<bool> _signInStateStreamController;

  FireDartTokenProvider(this.client, this._tokenStore)
      : _signInStateStreamController = StreamController<bool>();

  String? get userId => _tokenStore.userId;

  String? get refreshToken => _tokenStore.refreshToken;

  bool get isSignedIn => _tokenStore.hasToken;

  Stream<bool> get signInState => _signInStateStreamController.stream;

  Future<String> get idToken async {
    if (!isSignedIn) throw FireDartSignedOutException();

    if (_tokenStore.expiry!
        .subtract(_tokenExpirationThreshold)
        .isBefore(DateTime.now().toUtc())) {
      await _refresh();
    }
    return _tokenStore.idToken!;
  }

  void setToken(Map<String, dynamic> map) {
    _tokenStore.setToken(
      map['localId'],
      map['idToken'],
      map['refreshToken'],
      int.parse(map['expiresIn']),
    );
    _notifyState();
  }

  void signOut() {
    _tokenStore.clear();
    _notifyState();
  }

  Future _refresh() async {
    var response = await client.post(
      Uri.parse('https://securetoken.googleapis.com/v1/token'),
      body: {
        'grant_type': 'refresh_token',
        'refresh_token': _tokenStore.refreshToken,
      },
    );

    switch (response.statusCode) {
      case 200:
        var map = json.decode(response.body);
        _tokenStore.setToken(
          map['localId'] ?? _tokenStore.userId,
          map['id_token'],
          map['refresh_token'],
          int.parse(map['expires_in']),
        );
        break;
      case 400:
        signOut();
        throw FireDartAuthException(response.body);
    }
  }

  void _notifyState() => _signInStateStreamController.add(isSignedIn);
}
