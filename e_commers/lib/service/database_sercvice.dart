import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commers/model/product_model.dart';

class DatabaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<List<Product>> getProducts() async {
    final snapshot = await _firestore.collection('products').get();
    return snapshot.docs.map((doc) => Product.fromFirestore(doc.data())).toList();
  }
}