import 'package:get/get.dart';

import '../controllers/favioratpage_controller.dart';

class FavioratpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavioratpageController>(
      () => FavioratpageController(),
    );
  }
}
