import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/shared/util/firebase/firecore.dart';

class ProductService extends FireCore {
  @override
  CollectionReference ref =
      FirebaseFirestore.instance.collection(prefix + "product");
}
