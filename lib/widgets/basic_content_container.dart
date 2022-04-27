import 'package:flutter/material.dart';
import 'package:altermobilite/constants/ui_helper.dart';

class BasicContentContainer extends StatelessWidget {
  final Size size;
  final Widget? child;

  const BasicContentContainer({Key? key, required this.size, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -size.height * 0.1,
      height: size.height * 0.95,
      child: Container(
        alignment: Alignment.topCenter,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: White.standard,
        ),
        child: child,
      ),
    );
  }
}
