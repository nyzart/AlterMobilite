import 'package:json_annotation/json_annotation.dart';
part 'reservations_model.g.dart';

@JsonSerializable()
class ReservationsModel {
  //Vehicule informations
  final String vehiculeType;
  final String vehiculeModel;

  //Deposit Events
  final String actualDepositEvent;

  //Return Events
  final String actualReturnEvent;

  //Deposit informations
  final int? programmedDepositDate;
  final String programmedDepositPlace;

  //Park informations
  final int? parkingDate;
  final String? parkingPlace;

  //Return informations
  final int? programmedReturnDate;
  final String programmedReturnPlace;

  ReservationsModel({
    required this.vehiculeType,
    required this.vehiculeModel,
    required this.actualDepositEvent,
    required this.actualReturnEvent,
    this.programmedDepositDate,
    required this.programmedDepositPlace,
    this.parkingDate,
    this.parkingPlace,
    this.programmedReturnDate,
    required this.programmedReturnPlace,
  });

  //Convert all Json data into Dart class
  factory ReservationsModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationsModelFromJson(json);

  //Convert dart class into Json format
  Map<String, dynamic> toJson() => _$ReservationsModelToJson(this);
}
