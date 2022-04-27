import 'package:flutter/material.dart';

import 'package:altermobilite/constants/ui_helper.dart';

class NewRequestButton extends StatelessWidget {
  final Size size;

  const NewRequestButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "NOUVELLE DEMANDE",
        style: TextStyle(
          color: White.standard,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Blue.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: Size(size.width * .6, 48),
      ),
    );
  }
}
