// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationsModel _$ReservationsModelFromJson(Map<String, dynamic> json) =>
    ReservationsModel(
      vehiculeType: json['vehiculeType'] as String,
      vehiculeModel: json['vehiculeModel'] as String,
      actualDepositEvent: json['actualDepositEvent'] as String,
      actualReturnEvent: json['actualReturnEvent'] as String,
      programmedDepositDate: json['programmedDepositDate'] as int?,
      programmedDepositPlace: json['programmedDepositPlace'] as String,
      parkingDate: json['parkingDate'] as int?,
      parkingPlace: json['parkingPlace'] as String?,
      programmedReturnDate: json['programmedReturnDate'] as int?,
      programmedReturnPlace: json['programmedReturnPlace'] as String,
    );

Map<String, dynamic> _$ReservationsModelToJson(ReservationsModel instance) =>
    <String, dynamic>{
      'vehiculeType': instance.vehiculeType,
      'vehiculeModel': instance.vehiculeModel,
      'actualDepositEvent': instance.actualDepositEvent,
      'actualReturnEvent': instance.actualReturnEvent,
      'programmedDepositDate': instance.programmedDepositDate,
      'programmedDepositPlace': instance.programmedDepositPlace,
      'parkingDate': instance.parkingDate,
      'parkingPlace': instance.parkingPlace,
      'programmedReturnDate': instance.programmedReturnDate,
      'programmedReturnPlace': instance.programmedReturnPlace,
    };
