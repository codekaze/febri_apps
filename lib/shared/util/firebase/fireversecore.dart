import 'package:cloud_firestore/cloud_firestore.dart';

class FireverseCore {
  CollectionReference ref = FirebaseFirestore.instance.collection("courses");
  Stream<QuerySnapshot<Object?>> stream() {
    return FirebaseFirestore.instance.collection("courses").snapshots();
  }

  Stream<QuerySnapshot<Object?>> newestStream() {
    return ref.limit(5).orderBy("created_at").snapshots();
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
