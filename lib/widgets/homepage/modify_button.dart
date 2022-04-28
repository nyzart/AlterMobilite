import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:altermobilite/domain/reservations_repository/src/models/models.dart';
import 'package:altermobilite/constants/ui_helper.dart';
import 'package:altermobilite/domain/reservations_repository/src/provider/reservations_repository_provider.dart';

class ModifyButton extends StatelessWidget {
  final Size size;
  final ReservationsRepositoryProvider reservationProvider;

  const ModifyButton(
      {Key? key, required this.size, required this.reservationProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // List<ReservationsModel> reservations =
        //     reservationProvider.reservationList;
        // print(reservationProvider.reservationList);
        // reservations[0].reservationStates.isDepositRunning = true;
        // print(reservations[0].reservationStates.isDepositRunning);
        // reservationProvider.setReservationList = reservations;
      },
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
