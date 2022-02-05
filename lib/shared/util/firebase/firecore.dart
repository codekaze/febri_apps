import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireverse/fireglobal.dart';
import 'package:fireverse/fireverse.dart';
import '../../../data/session/app_session.dart';

class FireCore {
  var ref = Fire.getCollectionRef(collectionName: prefix + "example");
  dynamic stream() {
    if (Platform.isWindows) {
      return ref.stream;
    } else {
      return ref.snapshots();
    }
  }

  Future<Map?> getDoc(String id) async {
    if (Platform.isWindows) {
      var s = await ref.doc(id).get();
      var d = s.map;
      if (d == null) return Future.value(null);
      Map item = s.map;
      d["id"] = id;
      return (item);
    } else {
      var s = await ref.doc(id).get();
      var d = s.data();
      if (d == null) return Future.value(null);
      Map item = (d as Map);
      d["id"] = id;
      return (item);
    }
  }

  Future add(Map<String, dynamic> value) async {
    value["created_at"] = Fire.timestamp();
    value["updated_at"] = Fire.timestamp();
    log(ref.toString());
    return await ref.add(value);
  }

  Future update(String docId, Map<String, dynamic> value) async {
    value["updated_at"] = Timestamp.now();
    return await ref.doc(docId).update(value);
  }

  Future delete(String docId) async {
    return await ref.doc(docId).delete();
  }

  Future deleteAll() async {
    var snapshots = await ref.get();
    for (var i = 0; i < snapshots.docs.length; i++) {
      var doc = snapshots.docs[i];
      await ref.doc(doc.id).delete();
    }
  }
}
