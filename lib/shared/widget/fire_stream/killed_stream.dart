import 'dart:developer';

import 'package:fireverse/firestore/firestore.dart';
import 'package:fireverse/firestore/firestore_gateway.dart';

class KilledStream {
  Future getKilledStream(Stream s) async {
    log("getKILLEDSTREAM !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

    log("s.isBroadcast: ${s.isBroadcast}");

    // await s.drain();
    // var subs = s.listen((event) {});
    // await subs.cancel();

    // var ref = FireDartFirestore.instance.collection('test');
    // ref.stream.listen((document) => print('updated: $document'));

    if (fireDartFirestoreGatewayStreamCacheInstance != null) {}

    log("s.isBroadcast: x ${s.isBroadcast}");
  }
}
