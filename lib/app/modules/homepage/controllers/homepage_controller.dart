import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:love_shop/app/app_color/app_colors.dart';
import 'package:love_shop/app/app_image/appimage.dart';

class HomepageController extends GetxController {
  final searchbaritem = TextEditingController();

  var fav = [].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  selectfav(int index) {
    if (fav.contains(index)) {
      fav.remove(index);
    } else {
      fav.add(index);
    }
  }

  List backroundColor = [
    AppColor.primaryLighter,
    AppColor.shadowDark25,
    AppColor.shadowDark50,
    AppColor.textDark50,
    AppColor.textDark20,
    AppColor.primarySuccess,
  ];

  List<Productitem> item = [
    Productitem(title: 'Shart582', price: 950, imageUrl: AppImage.shart),
    Productitem(title: 'Shart420', price: 1500, imageUrl: AppImage.shart),
    Productitem(title: 'Shart190', price: 1050, imageUrl: AppImage.shart),
    Productitem(title: 'Shart560', price: 1000, imageUrl: AppImage.shart),
    Productitem(title: 'Shart330', price: 1250, imageUrl: AppImage.shart),
    Productitem(title: 'Shart690', price: 1380, imageUrl: AppImage.shart),
    Productitem(title: 'Shart888', price: 1850, imageUrl: AppImage.shart),
    Productitem(title: 'Shart109', price: 1650, imageUrl: AppImage.shart),
    Productitem(title: 'Shart284', price: 1290, imageUrl: AppImage.shart),
    Productitem(title: 'Shart192', price: 990, imageUrl: AppImage.shart),
  ];
}

class Productitem {
  final String title;
  final int price;
  final String imageUrl;

  Productitem(
      {required this.title, required this.price, required this.imageUrl});
}
