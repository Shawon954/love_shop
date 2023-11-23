import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  final GlobalKey loginkey = GlobalKey<FormState>();

  late TextEditingController loginemailcontroller,loginpasswordcontroller;

  var loginemail = "";
  var Loginpassword = "";


  @override
  void onInit() {
     loginemailcontroller = TextEditingController();
     loginpasswordcontroller = TextEditingController();
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

  String? validatoremail(value){
    if(!GetUtils.isEmail(value)){
      return "Provide valid email";
    }
    return null;
  }

  String? validatorpassword(value){
    if(value.length<=6){
      return "Password must be 6 characters";
    }
    return null;
  }

}
