import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterx/data/session/app_session.dart';
import 'package:flutterx/shared/util/firebase/firecore.dart';

class ProductCategoryService extends FireCore {
  CollectionReference ref =
      FirebaseFirestore.instance.collection(prefix + "product_category");
}
