import 'package:cloud_firestore/cloud_firestore.dart';

class FireCoreNew {
  CollectionReference ref = FirebaseFirestore.instance.collection("courses");
  Stream<QuerySnapshot<Object?>> stream() {
    return ref.snapshots();
  }

  Stream<QuerySnapshot<Object?>> newestStream() {
    return ref.limit(5).orderBy("created_at").snapshots();
  }

  Future<Map?> getDoc(String id) async {
    var s = await ref.doc(id).get();
    var d = s.data();
    if (d == null) return Future.value(null);
    Map item = (d as Map);
    d["id"] = id;
    return (item);
  }

  Future add(Map<String, dynamic> value) async {
    value["created_at"] = Timestamp.now();
    value["updated_at"] = Timestamp.now();
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
