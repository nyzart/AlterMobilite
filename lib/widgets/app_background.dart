import 'package:altermobilite/constants/ui_helper.dart';
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Size size;

  const AppBackground({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/map_alter.png'), fit: BoxFit.fill),
          ),
        ),
        Container(
          height: size.height * 0.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Blue.dark, Blue.dark.withOpacity(0)]),
          ),
        ),
      ],
    );
  }
}
