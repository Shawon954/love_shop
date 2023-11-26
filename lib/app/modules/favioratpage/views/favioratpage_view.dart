import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favioratpage_controller.dart';

class FavioratpageView extends GetView<FavioratpageController> {
  const FavioratpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavioratpageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FavioratpageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
