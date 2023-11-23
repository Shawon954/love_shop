import 'package:flutter/material.dart';

class BacroundScaffold extends StatelessWidget {

  final body;
  final backroundColor;
  final extendBody;
  final bottomSheet;
  final bottomNavigationBar;

  BacroundScaffold({super.key, this.body, this.backroundColor, this.extendBody, this.bottomSheet, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      backgroundColor: backroundColor,
      extendBody: extendBody,
      bottomSheet:bottomSheet ,
      bottomNavigationBar:bottomNavigationBar ,
    );
  }
}
