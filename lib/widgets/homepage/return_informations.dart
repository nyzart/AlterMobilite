import 'package:flutter/material.dart';

import 'package:altermobilite/constants/ui_helper.dart';

class ReturnInformations extends StatelessWidget {
  final String programmedReturnEvent;
  final int? programmedReturnDate;
  final String programmedReturnPlace;

  const ReturnInformations(
      {Key? key,
      required this.programmedReturnEvent,
      required this.programmedReturnDate,
      required this.programmedReturnPlace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            Icons.arrow_back,
            color: Brown.standard,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Text(
                programmedReturnEvent,
                style: TextStyle(
                  color: Gray.textEventInformations,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Text(
                dateFormat(DateTime.fromMillisecondsSinceEpoch(
                        programmedReturnDate != null
                            ? programmedReturnDate! * 1000
                            : 0))
                    .toString(),
                style: TextStyle(
                  color: Gray.textEventInformations,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              programmedReturnPlace,
              style: TextStyle(
                color: Gray.textEventInformations,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
