import 'package:altermobilite/widgets/app_background.dart';
import 'package:flutter/material.dart';
import 'package:altermobilite/widgets/appbar.dart';
import 'package:altermobilite/constants/ui_helper.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size preferredAppBarSize = Size(size.width, size.height * 0.1);

    return SafeArea(
      child: Scaffold(
        appBar: AlterMobiliteAppBar(
          size: preferredAppBarSize,
        ),
        body: Stack(
          children: [
            AppBackground(size: size),
            Positioned(
              bottom: 0,
              height: size.height * 0.85,
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: White.standard,
                ),
              ),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
      ),
    );
  }
}
