import 'package:cloud_firestore/cloud_firestore.dart';

class CardModel {
  String? docId;
  final int id;
  final String brand;
  final String category;
  final String description;
  final String discount;
  final List images;
  final int price;
  final double rating;
  final int stock;
  final String thumnail;
  final String title;

   CardModel({
    this.docId,
    required this.id,
    required this.brand,
    required this.category,
    required this.description,
    required this.discount,
    required this.images,
    required this.price,
    required this.rating,
    required this.stock,
    required this.thumnail,
    required this.title,
  });

  factory CardModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>>snapshot){

    final data = snapshot.data()!;

    return CardModel(
      docId: data['docId'],
        id: data['id'],
        brand:data ['brand'],
        category: data["category"],
        description: data['description'],
        discount:data ['discount'],
        images: data['images'],
        price: data['price'],
        rating: data['rating'],
        stock: data['stock'],
        thumnail:data ['thumnail'],
        title: data['title']);

  } toJson(){
    return {
      'docId':docId,
      'id':id,
      'brand':brand,
      'category':category,
      'description':description,
      'discount':discount,
      'images':images,
      'price':price,
      'rating':rating,
      'stock':stock,
      'thumnail':thumnail,
      'title':title,
    };

  }

}
