import 'package:flutter/material.dart';

import 'package:altermobilite/constants/ui_helper.dart';

class DepositInformations extends StatelessWidget {
  final String actualDepositEvent;
  final int? actualDepositDate;
  final String actualDepositPlace;

  const DepositInformations(
      {Key? key,
      required this.actualDepositEvent,
      required this.actualDepositDate,
      required this.actualDepositPlace})
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
            Icons.calendar_today,
            color: Blue.dark,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(
                actualDepositEvent,
                style: TextStyle(
                  color: Gray.textEventInformations,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(
                dateFormat(DateTime.fromMillisecondsSinceEpoch(
                        actualDepositDate != null
                            ? actualDepositDate! * 1000
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
              actualDepositPlace,
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
