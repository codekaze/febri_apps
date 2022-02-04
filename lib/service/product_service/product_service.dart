import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

class ProductService extends FireCore {
  @override
  var ref = Fire.getCollectionRef(collectionName: prefix + "product");
}
