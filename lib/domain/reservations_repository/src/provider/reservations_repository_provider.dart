import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../reservations_repository.dart';

class ReservationsRepositoryProvider extends ChangeNotifier {
  List<ReservationsModel>? _reservationList;

  ReservationsRepositoryProvider();

  set setReservationList(List<ReservationsModel> reservations) {
    _reservationList = reservations;
    notifyListeners();
  }

  get reservationList => _reservationList;

  getReservationList() async {
    _reservationList = await ReservationRepository().getActualReservations();
    notifyListeners();
  }
}
