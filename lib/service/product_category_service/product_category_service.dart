import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/data/session/app_session.dart';
import 'package:flutterx/shared/util/firebase/firecore.dart';

class ProductCategoryService extends FireCore {
  var ref = Fire.getCollectionRef(collectionName: prefix + "product_category");
}
