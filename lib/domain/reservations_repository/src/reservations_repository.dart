import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import './models/models.dart';

class ReservationRepository {
  Future<List<ReservationsModel>> getActualReservations() async {
    await Future.delayed(const Duration(seconds: 3));

    List<ReservationsModel> reservationsList = [];

    final String jsonFile =
        await rootBundle.loadString('assets/reservations_json.json');
    final data = await json.decode(jsonFile);
    final jsonResult = data["reservations"];

    for (final reservationJson in jsonResult) {
      reservationsList.add(ReservationsModel.fromJson(reservationJson));
    }
    if (reservationsList.isNotEmpty) {
      for (int index = 0; index < reservationsList.length; index++) {
        reservationsList[index].updateReservationStates();
      }
    }
    return reservationsList;
  }

  void setReservationStates(ReservationsModel reservation,
      {bool? isDepositP,
      bool? isDepositA,
      bool? isDepositD,
      bool? isDepositR,
      bool? isDepositDo,
      bool? isReturnP,
      bool? isReturnA,
      bool? isReturnD,
      bool? isReturnDo}) {
    reservation.updateReservationStates(
        isDepositP: isDepositP,
        isDepositA: isDepositA,
        isDepositD: isDepositD,
        isDepositR: isDepositR,
        isDepositDo: isDepositDo,
        isReturnP: isReturnP,
        isReturnA: isReturnA,
        isReturnD: isReturnD,
        isReturnDo: isReturnDo);
  }
}
