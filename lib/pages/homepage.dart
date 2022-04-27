import 'package:altermobilite/constants/ui_helper.dart';
import 'package:flutter/material.dart';

import 'package:altermobilite/widgets/homepage/homepage.dart';
import 'package:altermobilite/domain/reservations_repository/reservations_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BasicContentContainer(
      size: size,
      child: FutureBuilder<List<ReservationsModel>>(
        future: ReservationRepository().getActualReservations(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;
            return ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: data != null ? data.length : 0,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Gray.textFieldBorder),
                  ),
                  child: Column(
                    children: [
                      VehicleInformations(
                        vehicleModel: data![index].vehiculeModel,
                        vehicleType: data[index].vehiculeType,
                      ),
                      verticalSpacer(size.height * .03),
                      DepositInformations(
                          actualDepositEvent: data[index].actualDepositEvent,
                          actualDepositDate: data[index].programmedDepositDate,
                          actualDepositPlace:
                              data[index].programmedDepositPlace),
                      verticalSpacer(size.height * .03),
                      ReturnInformations(
                          programmedReturnEvent: data[index].actualReturnEvent,
                          programmedReturnDate:
                              data[index].programmedReturnDate,
                          programmedReturnPlace:
                              data[index].programmedReturnPlace),
                      verticalSpacer(size.height * .03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "ANNULER",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize:
                                  Size(size.width * .4, size.height * .06),
                              backgroundColor: White.standard,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              primary: Blue.dark,
                              side: BorderSide(color: Blue.dark),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "MODIFIER",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize:
                                  Size(size.width * .4, size.height * .06),
                              backgroundColor: White.standard,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              primary: Blue.dark,
                              side: BorderSide(color: Blue.dark),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
