import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/shared/util/firebase/firecore_new.dart';

class ProductService extends FireCoreNew {
  @override
  CollectionReference ref =
      FirebaseFirestore.instance.collection(prefix + "product");
}
