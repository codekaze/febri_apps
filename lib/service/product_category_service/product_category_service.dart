import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterx/data/session/app_session.dart';
import 'package:flutterx/shared/util/firebase/firecore.dart';
import 'package:flutterx/shared/util/firebase/firecore_new.dart';

class ProductCategoryService extends FireCoreNew {
  CollectionReference ref = FirebaseFirestore.instance.collection(
    prefix + "product_category",
  );
}
