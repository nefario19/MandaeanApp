// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get registrationDate => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get emailVerification => throw _privateConstructorUsedError;
  bool get phoneVerification => throw _privateConstructorUsedError;
  bool get mfa => throw _privateConstructorUsedError;
  Map<String, dynamic> get prefs => throw _privateConstructorUsedError;

  /// Serializes this UserDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      String firstName,
      String lastName,
      String email,
      String registrationDate,
      bool status,
      String phoneNumber,
      bool emailVerification,
      bool phoneVerification,
      bool mfa,
      Map<String, dynamic> prefs});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? registrationDate = null,
    Object? status = null,
    Object? phoneNumber = null,
    Object? emailVerification = null,
    Object? phoneVerification = null,
    Object? mfa = null,
    Object? prefs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerification: null == emailVerification
          ? _value.emailVerification
          : emailVerification // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerification: null == phoneVerification
          ? _value.phoneVerification
          : phoneVerification // ignore: cast_nullable_to_non_nullable
              as bool,
      mfa: null == mfa
          ? _value.mfa
          : mfa // ignore: cast_nullable_to_non_nullable
              as bool,
      prefs: null == prefs
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDTOImplCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$UserDTOImplCopyWith(
          _$UserDTOImpl value, $Res Function(_$UserDTOImpl) then) =
      __$$UserDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      String firstName,
      String lastName,
      String email,
      String registrationDate,
      bool status,
      String phoneNumber,
      bool emailVerification,
      bool phoneVerification,
      bool mfa,
      Map<String, dynamic> prefs});
}

/// @nodoc
class __$$UserDTOImplCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$UserDTOImpl>
    implements _$$UserDTOImplCopyWith<$Res> {
  __$$UserDTOImplCopyWithImpl(
      _$UserDTOImpl _value, $Res Function(_$UserDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? registrationDate = null,
    Object? status = null,
    Object? phoneNumber = null,
    Object? emailVerification = null,
    Object? phoneVerification = null,
    Object? mfa = null,
    Object? prefs = null,
  }) {
    return _then(_$UserDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerification: null == emailVerification
          ? _value.emailVerification
          : emailVerification // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerification: null == phoneVerification
          ? _value.phoneVerification
          : phoneVerification // ignore: cast_nullable_to_non_nullable
              as bool,
      mfa: null == mfa
          ? _value.mfa
          : mfa // ignore: cast_nullable_to_non_nullable
              as bool,
      prefs: null == prefs
          ? _value._prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDTOImpl implements _UserDTO {
  const _$UserDTOImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.registrationDate,
      required this.status,
      required this.phoneNumber,
      required this.emailVerification,
      required this.phoneVerification,
      required this.mfa,
      required final Map<String, dynamic> prefs})
      : _prefs = prefs;

  factory _$UserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String registrationDate;
  @override
  final bool status;
  @override
  final String phoneNumber;
  @override
  final bool emailVerification;
  @override
  final bool phoneVerification;
  @override
  final bool mfa;
  final Map<String, dynamic> _prefs;
  @override
  Map<String, dynamic> get prefs {
    if (_prefs is EqualUnmodifiableMapView) return _prefs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prefs);
  }

  @override
  String toString() {
    return 'UserDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, firstName: $firstName, lastName: $lastName, email: $email, registrationDate: $registrationDate, status: $status, phoneNumber: $phoneNumber, emailVerification: $emailVerification, phoneVerification: $phoneVerification, mfa: $mfa, prefs: $prefs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailVerification, emailVerification) ||
                other.emailVerification == emailVerification) &&
            (identical(other.phoneVerification, phoneVerification) ||
                other.phoneVerification == phoneVerification) &&
            (identical(other.mfa, mfa) || other.mfa == mfa) &&
            const DeepCollectionEquality().equals(other._prefs, _prefs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      firstName,
      lastName,
      email,
      registrationDate,
      status,
      phoneNumber,
      emailVerification,
      phoneVerification,
      mfa,
      const DeepCollectionEquality().hash(_prefs));

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      __$$UserDTOImplCopyWithImpl<_$UserDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOImplToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {required final String id,
      required final String createdAt,
      required final String updatedAt,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String registrationDate,
      required final bool status,
      required final String phoneNumber,
      required final bool emailVerification,
      required final bool phoneVerification,
      required final bool mfa,
      required final Map<String, dynamic> prefs}) = _$UserDTOImpl;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$UserDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get registrationDate;
  @override
  bool get status;
  @override
  String get phoneNumber;
  @override
  bool get emailVerification;
  @override
  bool get phoneVerification;
  @override
  bool get mfa;
  @override
  Map<String, dynamic> get prefs;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
