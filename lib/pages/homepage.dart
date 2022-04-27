import 'package:altermobilite/constants/ui_helper.dart';
import 'package:flutter/material.dart';

import 'package:altermobilite/widgets/homepage/homepage.dart';
import 'package:altermobilite/domain/reservations_repository/reservations_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
          top: size.height * .07,
          child: Text(
            'Vos demandes de prise en charge',
            style: TextStyle(
              color: White.standard,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        BasicContentContainer(
          size: size,
          child: FutureBuilder<List<ReservationsModel>>(
            future: ReservationRepository().getActualReservations(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data;
                return ListView.builder(
                  padding: const EdgeInsets.all(0),
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
                              actualDepositEvent:
                                  data[index].actualDepositEvent,
                              actualDepositDate:
                                  data[index].programmedDepositDate,
                              actualDepositPlace:
                                  data[index].programmedDepositPlace),
                          verticalSpacer(size.height * .03),
                          ReturnInformations(
                              programmedReturnEvent:
                                  data[index].actualReturnEvent,
                              programmedReturnDate:
                                  data[index].programmedReturnDate,
                              programmedReturnPlace:
                                  data[index].programmedReturnPlace),
                          verticalSpacer(size.height * .03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CancelButton(size: size),
                              ModifyButton(size: size),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(color: Blue.dark),
                );
              }
            },
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 16),
            child: NewRequestButton(size: size),
          ),
        ),
      ],
    );
  }
}
