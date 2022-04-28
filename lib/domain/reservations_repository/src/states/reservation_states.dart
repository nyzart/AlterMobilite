import 'package:flutter/material.dart';

class ReservationStates extends ChangeNotifier {
  //Deposit
  bool isDepositPlanned;
  bool isDepositAffected;
  bool isDepositDriverComing;
  bool isDepositRunning;
  bool isDepositDone;

  //Return
  bool isReturnPlanned;
  bool isReturnAffected;
  bool isReturnDriverComing;
  bool isReturnDone;

  ReservationStates(
      {this.isDepositPlanned = false,
      this.isDepositAffected = false,
      this.isDepositDriverComing = false,
      this.isDepositRunning = false,
      this.isDepositDone = false,
      this.isReturnPlanned = false,
      this.isReturnAffected = false,
      this.isReturnDriverComing = false,
      this.isReturnDone = false});

  void setReservationState(
      {bool? isDepositP,
      bool? isDepositA,
      bool? isDepositD,
      bool? isDepositR,
      bool? isDepositDo,
      bool? isReturnP,
      bool? isReturnA,
      bool? isReturnD,
      bool? isReturnDo}) {
    if (isDepositP != null) isDepositPlanned = isDepositP;
    if (isDepositA != null) isDepositAffected = isDepositA;
    if (isDepositD != null) isDepositDriverComing = isDepositD;
    if (isDepositR != null) isDepositRunning = isDepositR;
    if (isDepositDo != null) isDepositDone = isDepositDo;
    if (isReturnP != null) isReturnPlanned = isReturnP;
    if (isReturnA != null) isReturnAffected = isReturnA;
    if (isReturnD != null) isReturnDriverComing = isReturnD;
    if (isReturnDo != null) isReturnDone = isReturnDo;
    notifyListeners();
  }
}
