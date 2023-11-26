import 'package:cloud_firestore/cloud_firestore.dart';

class FvaModel {
  String? docId;
  final int Id;
  final String brand;
  final String category;
  final String description;
  final String discount;
  final int price;
  final List images;
  final double rating;
  final int stock;
  final String thumnail;
  final String title;

  FvaModel({
    this.docId,
    required this.Id,
    required this.brand,
    required this.category,
    required this.description,
    required this.discount,
    required this.price,
    required this.images,
    required this.rating,
    required this.stock,
    required this.thumnail,
    required this.title,
  });

  factory FvaModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;

    return FvaModel(
        docId: data['docId'],
        Id: data['Id'],
        brand: data['brand'],
        category: data['category'],
        description: data['description'],
        discount: data['discount'],
        price: data['price'],
        images: data['images'],
        rating: data['rating'],
        stock: data['stock'],
        thumnail: data['thumnail'],
        title: data['title']);
  }
  toJson() {
    return {
      'docId': docId,
      'Id': Id,
      'brand': brand,
      'category': category,
      'description': description,
      'discount': discount,
      'price': price,
      'images': images,
      'rating': rating,
      'stock': stock,
      'thumnail': thumnail,
      'title': title,
    };
  }
}
