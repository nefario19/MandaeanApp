// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      registrationDate: json['registrationDate'] as String,
      status: json['status'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      emailVerification: json['emailVerification'] as bool,
      phoneVerification: json['phoneVerification'] as bool,
      mfa: json['mfa'] as bool,
      prefs: json['prefs'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'registrationDate': instance.registrationDate,
      'status': instance.status,
      'phoneNumber': instance.phoneNumber,
      'emailVerification': instance.emailVerification,
      'phoneVerification': instance.phoneVerification,
      'mfa': instance.mfa,
      'prefs': instance.prefs,
    };
