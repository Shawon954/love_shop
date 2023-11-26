import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cartpage_controller.dart';

class CartpageView extends GetView<CartpageController> {
  const CartpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartpageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CartpageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
