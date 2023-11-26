import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {

  final signupkey = GlobalKey<FormState>();

  late TextEditingController

      signupusernamecontroller,
      signupnumbercontroller,
      signupemailcontroller,
      signuppasswordcontroller;

  var ispassword = false.obs;

  var signupusername = " ";
  var signupnumber = " ";
  var signupemail  = " ";
  var signuppassword = " ";

  var isloading = false.obs;




  @override
  void onInit() {
    signupusernamecontroller = TextEditingController();
    signupnumbercontroller = TextEditingController();
    signupemailcontroller = TextEditingController();
    signuppasswordcontroller = TextEditingController();

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
    signupnumbercontroller.clear();
    signupemailcontroller.clear();
    signuppasswordcontroller.clear();
    signupusernamecontroller.clear();

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
  String? validatorname(String name) {
    if (name.isEmpty) {
      return "Places input username";
    }
    return null;
  }
  String? validatorphonenumber(String phone) {
    if (phone.length <= 11) {
      return "Input 11 Digit phone number";
    }
    return null;
  }

  void checksignup() {
    final isValid = signupkey.currentState!.validate();
    if (!isValid) {
      print(signupusername.toString());
      print(signupnumber.toString());
      print(signupemail.toString());
      print(signuppassword.toString());
      return;
    }
    signupkey.currentState!.save();
  }

  void show() {
    ispassword.value = !ispassword.value;
  }

}
