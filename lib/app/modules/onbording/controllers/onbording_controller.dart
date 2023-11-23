
import 'package:get/get.dart';
import 'package:love_shop/app/model/onbording/on_bording.dart';

class OnbordingController extends GetxController {

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

  List <IntroductionModel> intodata =[
    IntroductionModel(title: "Choose Product", discription: "Browse the menu and order directly from the application", imageUrl: 'assets/onbording/product.png'),
    IntroductionModel(title: "Delivery", discription: "Browse the menu and order directly from the application", imageUrl: 'assets/onbording/devlivary.png'),
    IntroductionModel(title: "Finish", discription: "Browse the menu and order directly from the application", imageUrl: 'assets/onbording/payment.png'),

  ];

}
