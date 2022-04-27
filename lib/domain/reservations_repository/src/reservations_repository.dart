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
    return reservationsList;
  }
}
