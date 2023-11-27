import 'package:get/get.dart';

class DetailsController extends GetxController {
  dynamic argumentData = Get.arguments;


  @override
  void onInit() {
    print(argumentData[0]);
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

}
