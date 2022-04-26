import 'package:flutter/material.dart';
import 'package:altermobilite/constants/ui_helper.dart';

class AlterMobiliteAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Size size;

  const AlterMobiliteAppBar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.dehaze),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  White.standard.withOpacity(0.25),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                    EdgeInsets.zero),
                elevation: MaterialStateProperty.all<double>(0),
                shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "ALTER",
            style: TextStyle(
              color: White.standard,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            "MOBILITE",
            style: TextStyle(
              color: Brown.light,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => size;
}
