import 'package:flutter/material.dart';

import 'package:altermobilite/constants/ui_helper.dart';
import 'package:altermobilite/domain/reservations_repository/src/states/reservation_states.dart';
import 'package:altermobilite/domain/reservations_repository/src/provider/reservations_repository_provider.dart';
import 'package:provider/provider.dart';

class DepositInformations extends StatelessWidget {
  final int? actualDepositDate;
  final String actualDepositPlace;
  final String? parkingPlace;
  final ReservationStates actualDepositEvent;

  const DepositInformations(
      {Key? key,
      required this.actualDepositEvent,
      required this.actualDepositDate,
      required this.actualDepositPlace,
      this.parkingPlace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: getDepositBackgroundColor(actualDepositEvent),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
        child: Row(
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
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Text(
                    getDepositTitleInformation(actualDepositEvent),
                    style: TextStyle(
                      color:
                          getDepositTitleInformationColor(actualDepositEvent),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: SizedBox(
                    width: size.width * .7,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        getDepositMainInformation(actualDepositEvent,
                            actualDepositDate, parkingPlace),
                        style: TextStyle(
                          color: getDepositMainInformationColor(
                              actualDepositEvent),
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
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
        ),
      ),
    );
  }
}

double getDepositBoxSize(Size size, ReservationStates actualDepositEvent) {
  if (actualDepositEvent.isDepositDone) return size.width * .7;
  if (actualDepositEvent.isDepositRunning) return size.width * .7;
  if (actualDepositEvent.isDepositDriverComing) {
    return size.width * .7;
  }
  if (actualDepositEvent.isDepositAffected) {
    return size.width * .7;
  }
  return size.width * .5;
}

Color getDepositBackgroundColor(ReservationStates actualDepositEvent) {
  if (actualDepositEvent.isDepositDone) return Blue.dark.withOpacity(.06);
  if (actualDepositEvent.isDepositRunning) return Blue.dark.withOpacity(.06);
  if (actualDepositEvent.isDepositDriverComing) {
    return Blue.dark.withOpacity(.06);
  }
  if (actualDepositEvent.isDepositAffected) {
    return Colors.transparent;
  }
  return Colors.transparent;
}

String getDepositTitleInformation(ReservationStates actualDepositEvent) {
  if (actualDepositEvent.isDepositDone) return "Véhicule stationné";
  if (actualDepositEvent.isDepositRunning) return "Dépôt en cours";
  if (actualDepositEvent.isDepositDriverComing) return "Dépôt en cours";
  if (actualDepositEvent.isDepositAffected) {
    return "Dépôt affecté à un relayeur";
  }
  return "Dépôt programmé";
}

Color getDepositTitleInformationColor(ReservationStates actualDepositEvent) {
  if (actualDepositEvent.isDepositDone) return Blue.dark;
  if (actualDepositEvent.isDepositRunning) return Blue.dark;
  if (actualDepositEvent.isDepositDriverComing) return Blue.dark;
  if (actualDepositEvent.isDepositAffected) {
    return Blue.dark;
  }
  return Gray.textEventInformations;
}

String getDepositMainInformation(ReservationStates actualDepositEvent,
    int? actualDepositDate, String? parkingPlace) {
  if (actualDepositEvent.isDepositDone) {
    return parkingPlace ?? "Parking non renseigné";
  }
  if (actualDepositEvent.isDepositRunning) {
    return "Véhicule en route vers le parking";
  }
  if (actualDepositEvent.isDepositDriverComing) {
    return "Relayeur en route vers votre position";
  }
  if (actualDepositEvent.isDepositAffected) {
    return actualDepositDate != null
        ? dateFormat(
                DateTime.fromMillisecondsSinceEpoch(actualDepositDate * 1000))
            .toString()
        : "Date non renseigné";
  }
  return actualDepositDate != null
      ? dateFormat(
              DateTime.fromMillisecondsSinceEpoch(actualDepositDate * 1000))
          .toString()
      : "Date non renseigné";
}

Color getDepositMainInformationColor(ReservationStates actualDepositEvent) {
  if (actualDepositEvent.isDepositDone) return Blue.dark;
  if (actualDepositEvent.isDepositRunning) return Blue.dark;
  if (actualDepositEvent.isDepositDriverComing) return Blue.dark;
  if (actualDepositEvent.isDepositAffected) {
    return Blue.dark;
  }
  return Gray.textEventInformations;
}

String getPlaceInformation(ReservationStates actualDepositEvent,
    String actualDepositPlace, String? parkingPlace) {
  if (actualDepositEvent.isDepositDone) {
    return parkingPlace ?? "Parking non renseigné";
  }
  if (actualDepositEvent.isDepositRunning) {
    return parkingPlace ?? "Parking non renseigné";
  }
  if (actualDepositEvent.isDepositDriverComing) return actualDepositPlace;
  if (actualDepositEvent.isDepositAffected) {
    return actualDepositPlace;
  }
  return actualDepositPlace;
}
