import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginkey = GlobalKey<FormState>();

  late TextEditingController loginemailcontroller, loginpasswordcontroller;

  var loginemail = "";
  var Loginpassword = "";

  var ispassword = false.obs;

  @override
  void onInit() {
    loginemailcontroller = TextEditingController();
    loginpasswordcontroller = TextEditingController();

    show();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    loginpasswordcontroller.clear();
    loginemailcontroller.clear();
  }

  String? validatoremail(value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid email";
    }
    return null;
  }

  String? validatorpassword(value) {
    if (value.length <= 6) {
      return "Password must be 6 characters";
    }
    return null;
  }

  void checklogin() {
    final isValid = loginkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginkey.currentState!.save();
  }

  void show() {
    ispassword.value = !ispassword.value;
  }
}
