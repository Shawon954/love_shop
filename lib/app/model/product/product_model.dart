
import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final int id;
  final String brand;
  final String category;
  final String discription;
  final double discount;
  final int price;
  final int stock;
  final double rating;
  final String thumbanil;
  final String title;

  const Product({
    required this.id,
    required this.brand,
    required this.category,
    required this.discription,
    required this.discount,
    required this.price,
    required this.stock,
    required this.rating,
    required this.thumbanil,
    required this.title,
  });

  factory Product.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;

    return Product(
        id: data['id'],
        brand: data['brand'],
        category: data['category'],
        discription: data['discription'],
        discount: data['discount'],
        price: data['price'],
        stock: data['stock'],
        rating: data['rating'],
        thumbanil: data['thumbanil'],
        title: data['title']);
  }
}
