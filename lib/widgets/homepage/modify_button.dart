import 'package:flutter/material.dart';

import 'package:altermobilite/constants/ui_helper.dart';

class ModifyButton extends StatelessWidget {
  final Size size;

  const ModifyButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text(
        "MODIFIER",
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(size.width * .4, size.height * .06),
        backgroundColor: White.standard,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        primary: Blue.dark,
        side: BorderSide(color: Blue.dark),
      ),
    );
  }
}
