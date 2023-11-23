
import 'package:flutter/material.dart';

import '../../app_color/app_colors.dart';

class Button extends StatelessWidget {
  final child;
  VoidCallback onPressed;
  final height;
  final width;
  final backroundColor;

   Button({super.key, this.child,required this.onPressed, this.height, this.width, this.backroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,

      child: Container(
        height: height,
        width: width,
        color: backroundColor,
        child: Card(
          elevation: 5,

          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
