import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterx/core.dart';

class ProductService extends FireCore {
  @override
  var ref = FirebaseFirestore.instance.collection(prefix + "product");
}
