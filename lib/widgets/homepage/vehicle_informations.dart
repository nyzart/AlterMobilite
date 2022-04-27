import 'package:flutter/material.dart';
import 'package:altermobilite/constants/ui_helper.dart';

class VehicleInformations extends StatelessWidget {
  final String vehicleModel;
  final String vehicleType;

  const VehicleInformations(
      {Key? key, required this.vehicleModel, required this.vehicleType})
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
            Icons.directions_car,
            color: Gray.textEventTitle,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
              child: Text(
                vehicleModel,
                style: TextStyle(
                  color: Gray.textEventTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              vehicleType,
              style: TextStyle(
                color: Gray.textEventSpecificInformations,
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
