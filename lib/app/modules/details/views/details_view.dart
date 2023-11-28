import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:love_shop/app/app_image/appimage.dart';
import 'package:love_shop/app/utils/base_size/basesize.dart';
import 'package:love_shop/app/utils/text_style/style.dart';
import 'package:love_shop/app/widget/backround/screen_backround.dart';

import '../../../app_color/app_colors.dart';
import '../../../widget/button/button.dart';
import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {

  final DetailsController detailsController = Get.put(DetailsController());

   DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BackoundScaffold(
      extendBody: true,
      backroundColor: Color(0xffdcedf9),

      body:  Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,right: 10,left: 10,),
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
                    child: Icon(Icons.favorite_outline,color: AppColor.textDark50,size: 25,),

                  ),
                ),


              ],
            ),
              SizedBox(
                height: BaseSize.Space_15,
              ),
              Container(
                color: Colors.amber,
                  height: size.height/2.5,
                  width: double.infinity,
                  child: Image.asset(controller.argumentData[0])),
                 SizedBox(height: BaseSize.Space_10,),
              Container(

                 height: size.height/2.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: size.height/BaseSize.Space_10,
                          width: double.infinity,
                          color: Colors.deepOrange,
                          child: Row(

                            children: [
                              Expanded(
                                 flex: 2,
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 10),
                                     child: Text(controller.argumentData[1],
                                       style: textStyle(
                                           fontWidget: FontWeight.w500,fontsize: 16.sp,color: AppColor.textDark60),),
                                   ),),
                              Expanded(
                                 flex: 1,
                                   child: Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Align(
                                         alignment: Alignment.centerRight,
                                         child: Text(controller.argumentData[2],
                                           style: textStyle(
                                               fontWidget: FontWeight.bold,fontsize: 16.sp,color: AppColor.textDark60),)),
                                   ),),

                            ],
                          ),
                        ),
                        SizedBox(height: BaseSize.Space_15,),
                        Text("Discription",
                          style: textStyle(
                              fontWidget: FontWeight.w500,fontsize: 16.sp,color: AppColor.textDark60),),
                        SizedBox(height: BaseSize.Space_15,),
                        Text("Discription",
                          style: textStyle(
                              fontWidget: FontWeight.w500,fontsize: 16.sp,color: AppColor.textDark60),),
                        SizedBox(height: BaseSize.Space_15,),
                        Text("Discription",
                          style: textStyle(
                              fontWidget: FontWeight.w500,fontsize: 16.sp,color: AppColor.textDark60),),
                        SizedBox(height: BaseSize.Space_15,),
                        Text("Discription",
                          style: textStyle(
                              fontWidget: FontWeight.w500,fontsize: 16.sp,color: AppColor.textDark60),),

                        SizedBox(height: size.height/30,),
                        Center(
                          child: Button(
                            height: size.height/BaseSize.Space_15,
                            width: size.width/BaseSize.Space_2,
                            child: Text("Add To Card",style: textStyle(fontsize: 16.sp,fontWidget: FontWeight.w400,color: AppColor.textDark50),),
                            onPressed: (){
                              print('add to card');
                            },
                          ),
                        )



                      ],
                    ),
                  )),




            ],
          ),
        ),
      ),
    );
  }
}
