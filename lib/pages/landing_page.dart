import 'package:flutter/material.dart';

import 'package:altermobilite/pages/homepage.dart';
import 'package:altermobilite/widgets/app_background.dart';
import 'package:altermobilite/widgets/appbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size preferredAppBarSize = Size(size.width, size.height * 0.1);

    List<String> indexList = ["HomePage"];
    List<Widget> pagesList = [const HomePage()];

    int index = indexList.indexOf("HomePage");

    return SafeArea(
      child: Scaffold(
        appBar: AlterMobiliteAppBar(
          size: preferredAppBarSize,
        ),
        body: Stack(
          children: [
            AppBackground(size: size),
            pagesList[index],
          ],
        ),
        extendBodyBehindAppBar: true,
      ),
    );
  }
}
