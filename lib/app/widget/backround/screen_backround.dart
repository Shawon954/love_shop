import 'package:flutter/material.dart';
import 'package:love_shop/app/app_color/app_colors.dart';
import 'package:love_shop/app/app_image/appimage.dart';

class BackoundScaffold extends StatelessWidget {

  final body;
  final backroundColor;
  final extendBody;
  final bottomSheet;
  final bottomNavigationBar;
  final appbar;

  BackoundScaffold({super.key, this.body, this.backroundColor, this.extendBody, this.bottomSheet, this.bottomNavigationBar, this.appbar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: appbar,
    drawer:  Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              
              accountName: Text(
                "Abhishek Mishra",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("abhishekm977@gmail.com"),

              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 165, 255, 137),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ), //Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ), //DrawerHeader
          ListTile(
            hoverColor: AppColor.primary,

            selectedTileColor: Colors.amber,
            leading: const ImageIcon(AssetImage(AppImage.homeoutlineicon,),color: AppColor.buttoncolor,),
            title: const Text(' Home '),
            onTap: () {

            },
          ),
          ListTile(
            leading: const ImageIcon(AssetImage(AppImage.passionoutlineicon,),color: AppColor.buttoncolor,),
            title: const Text(' Wishlist '),
            onTap: () {

            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text(' Order '),
            onTap: () {

            },
          ),
          ListTile(
            leading: const ImageIcon(AssetImage(AppImage.trolleyoutlineicon,),color: AppColor.buttoncolor,),
            title: const Text(' Cart '),
            onTap: () {

            },
          ),

        ],
      ),
    ), //Dra,
      body: body,
      backgroundColor: backroundColor,
      extendBody: extendBody,
      bottomSheet:bottomSheet ,
      bottomNavigationBar:bottomNavigationBar ,
    );
  }
}
