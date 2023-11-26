import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:love_shop/app/routes/app_pages.dart';

import '../../../app_color/app_colors.dart';
import '../../../app_image/appimage.dart';
import '../../../app_string/app_string.dart';
import '../../../utils/base_size/basesize.dart';
import '../../../utils/text_style/style.dart';
import '../../../widget/backround/screen_backround.dart';
import '../../../widget/button/button.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {



   SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: BackoundScaffold(
        extendBody: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: BaseSize.Space_20,
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: BaseSize.Space_12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: (){
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back)),
                  ),
                ),
                SizedBox(
                  height: size.height / 20.0,
                ),
                Image.asset(
                  AppImage.splashimage,
                  height: size.height / 8.2,
                  width: size.width / 4.2,
                ),
                SizedBox(
                  height: BaseSize.Space_10,
                ),
                Text(
                  AppString.signup,
                  style: textStyle(
                      fontsize: 18.sp,
                      fontWidget: FontWeight.w600,
                      color: AppColor.textDark60,
                      letterSpacing: 1.2),
                ),
                SizedBox(
                  height: BaseSize.Space_30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: BaseSize.Space_15, right: BaseSize.Space_15),
                  child: Form(
                    key: controller.signupkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(left: BaseSize.Space_8),
                          child: Text(
                            AppString.username,
                            style: textStyle(
                                fontsize: 14.sp,
                                color: AppColor.textDark70,
                                fontWidget: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_5,
                        ),
                        TextFormField(
                          controller: controller.signupusernamecontroller,
                          keyboardType: TextInputType.text,

                          onSaved: (val){

                            controller.signupusername = val!;
                          },
                          validator: (val){
                            return controller.validatorname (val!);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter your name",
                            hintStyle: textStyle(fontsize: 12.sp,fontWidget: FontWeight.w400,color:AppColor.textDark40),
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColor.primaryLighter,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: AppColor.shadowDark40,
                                  width: 1.8,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: AppColor.shadowDark50, width: 1.8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: BaseSize.Space_8),
                          child: Text(
                            AppString.phonenumber,
                            style: textStyle(
                                fontsize: 14.sp,
                                color: AppColor.textDark70,
                                fontWidget: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_5,
                        ),
                        TextFormField(
                          controller: controller.signupnumbercontroller,
                          keyboardType: TextInputType.number,

                          onSaved: (val){

                            controller.signupnumber =val!;
                          },
                          validator: (val){
                            return controller.validatorphonenumber (val!);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter your phone number",
                            hintStyle: textStyle(fontsize: 12.sp,fontWidget: FontWeight.w400,color:AppColor.textDark40),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: AppColor.primaryLighter,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: AppColor.shadowDark40,
                                  width: 1.8,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: AppColor.shadowDark50, width: 1.8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: BaseSize.Space_8),
                          child: Text(
                            AppString.emailtext,
                            style: textStyle(
                                fontsize: 14.sp,
                                color: AppColor.textDark70,
                                fontWidget: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_5,
                        ),
                        TextFormField(
                          controller: controller.signupemailcontroller,
                          keyboardType: TextInputType.emailAddress,

                          onSaved: (val){

                            controller.signupemail =val!;
                          },
                          validator: (val){
                            return controller.validatoremail (val!);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter your email",
                            hintStyle: textStyle(fontsize: 12.sp,fontWidget: FontWeight.w400,color:AppColor.textDark40),
                            prefixIcon: Icon(
                              Icons.email,
                              color: AppColor.primaryLighter,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: AppColor.shadowDark40,
                                  width: 1.8,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: AppColor.shadowDark50, width: 1.8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: BaseSize.Space_8),
                          child: Text(
                            AppString.passwordtext,
                            style: textStyle(
                                fontsize: 14.sp,
                                color: AppColor.textDark70,
                                fontWidget: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_5,
                        ),
                        Obx(() {
                          return TextFormField(
                            obscureText: controller.ispassword.value,
                            controller: controller.signuppasswordcontroller,
                            keyboardType: TextInputType.text,
                            cursorColor: AppColor.textDark80,
                            autocorrect: true,
                            onSaved: (value){
                              controller.signuppassword= value!;
                            },
                            validator: (val){
                              return controller.validatorpassword(val!);
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),

                              hintText: "Enter your password",
                              hintStyle: textStyle(fontsize: 12.sp,fontWidget: FontWeight.w400,color:AppColor.textDark40),
                              suffixIcon: Obx(() {
                                return IconButton(
                                    onPressed: () {
                                      controller.show();
                                    },
                                    icon: controller.ispassword.value ? Icon(
                                        Icons.visibility_off) : Icon(
                                        Icons.visibility));
                              }),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: AppColor.primaryLighter,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: AppColor.shadowDark40,
                                    width: 1.8,
                                  )),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: AppColor.shadowDark50, width: 1.8),
                              ),
                            ),
                          );
                        }),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Center(
                          child: Button(
                            height: size.height / 15.0,
                            width: size.width / 1.8,
                            child: Text(
                              AppString.signup,
                              style: textStyle(
                                  fontWidget: FontWeight.w500,
                                  fontsize: 18.sp,
                                  letterSpacing: 1.1),
                            ),
                            onPressed: () {
                              controller.checksignup();
                              Get.toNamed(Routes.BOTTOM_NAVBAR);
                            },
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Divider(
                                  thickness: 1.5,
                                  color: AppColor.textDark40,
                                  indent: 50,
                                )),
                            Text(
                              AppString.or,
                              style: textStyle(
                                fontsize: 18.sp,
                                fontWidget: FontWeight.w500,
                                color: AppColor.textDark70,
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Divider(
                                  thickness: 1.5,
                                  color: AppColor.textDark40,
                                  endIndent: 50,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  radius: 28.r,
                                  child: Image.asset(
                                    AppImage.facebook_icon,
                                    height: 40.h,
                                    width: 40.w,
                                  )),
                            ),
                            SizedBox(width: BaseSize.Space_20,),
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  radius: 28.r,
                                  child: Image.asset(
                                    AppImage.gmail_icon,
                                    height: 40.h,
                                    width: 40.w,
                                  )),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: RichText(
                                text: TextSpan(
                                    text: AppString.alrady,
                                    style: textStyle(
                                        fontsize: 12.sp,
                                        color: AppColor.textDark40,
                                        fontWidget: FontWeight.w500),
                                    children: [
                                      TextSpan(
                                          text: AppString.logintext,
                                          style: textStyle(
                                              fontsize: 14.sp,
                                              color: AppColor.textDark70,
                                              fontWidget: FontWeight.w500)),
                                    ])),
                          ),
                        ),
                        SizedBox(
                          height: BaseSize.Space_15,
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
