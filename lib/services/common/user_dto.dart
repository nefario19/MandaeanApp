import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@Freezed()
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String firstName,
    required String lastName,
    required String email,
    required String registrationDate,
    required bool status,
    required String phoneNumber,
    required bool emailVerification,
    required bool phoneVerification,
    required bool mfa,
    required Map<String, dynamic> prefs,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);
}
