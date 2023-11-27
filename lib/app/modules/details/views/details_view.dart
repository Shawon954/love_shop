import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/widget/backround/screen_backround.dart';

import '../../../app_color/app_colors.dart';
import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {

  final DetailsController detailsController = Get.put(DetailsController());

   DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: BackoundScaffold(
        extendBody: true,
        backroundColor: Color(0xffdcedf9),
        
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 15),
            child: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.white70,
                    child: InkWell(
                      child: Icon(Icons.arrow_back,color: AppColor.textDark50,size: 25,),
                      onTap: ()=>Get.back(),
                    ),
                  ),

                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.white70,
                    child: InkWell(
                      child: Icon(Icons.arrow_back,color: AppColor.textDark50,size: 25,),

                    ),
                  ),


                ],
              ),
                Container(
                    height: size.height/2.5,
                    width: double.infinity,
                    child: Image.asset(controller.argumentData[0])),
                Text(controller.argumentData[1]),
                Text(controller.argumentData[2]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
