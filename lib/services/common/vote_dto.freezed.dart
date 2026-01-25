// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoteDTO _$VoteDTOFromJson(Map<String, dynamic> json) {
  return _VoteDTO.fromJson(json);
}

/// @nodoc
mixin _$VoteDTO {
  int get availableBallots => throw _privateConstructorUsedError;
  int get issuedBallots => throw _privateConstructorUsedError;
  int get usedBallots => throw _privateConstructorUsedError;
  String get selectedCandidate => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteDTOCopyWith<VoteDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteDTOCopyWith<$Res> {
  factory $VoteDTOCopyWith(VoteDTO value, $Res Function(VoteDTO) then) =
      _$VoteDTOCopyWithImpl<$Res, VoteDTO>;
  @useResult
  $Res call(
      {int availableBallots,
      int issuedBallots,
      int usedBallots,
      String selectedCandidate,
      int voteCount,
      String userId,
      String id,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$VoteDTOCopyWithImpl<$Res, $Val extends VoteDTO>
    implements $VoteDTOCopyWith<$Res> {
  _$VoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBallots = null,
    Object? issuedBallots = null,
    Object? usedBallots = null,
    Object? selectedCandidate = null,
    Object? voteCount = null,
    Object? userId = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      availableBallots: null == availableBallots
          ? _value.availableBallots
          : availableBallots // ignore: cast_nullable_to_non_nullable
              as int,
      issuedBallots: null == issuedBallots
          ? _value.issuedBallots
          : issuedBallots // ignore: cast_nullable_to_non_nullable
              as int,
      usedBallots: null == usedBallots
          ? _value.usedBallots
          : usedBallots // ignore: cast_nullable_to_non_nullable
              as int,
      selectedCandidate: null == selectedCandidate
          ? _value.selectedCandidate
          : selectedCandidate // ignore: cast_nullable_to_non_nullable
              as String,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoteDTOCopyWith<$Res> implements $VoteDTOCopyWith<$Res> {
  factory _$$_VoteDTOCopyWith(
          _$_VoteDTO value, $Res Function(_$_VoteDTO) then) =
      __$$_VoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int availableBallots,
      int issuedBallots,
      int usedBallots,
      String selectedCandidate,
      int voteCount,
      String userId,
      String id,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_VoteDTOCopyWithImpl<$Res>
    extends _$VoteDTOCopyWithImpl<$Res, _$_VoteDTO>
    implements _$$_VoteDTOCopyWith<$Res> {
  __$$_VoteDTOCopyWithImpl(_$_VoteDTO _value, $Res Function(_$_VoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBallots = null,
    Object? issuedBallots = null,
    Object? usedBallots = null,
    Object? selectedCandidate = null,
    Object? voteCount = null,
    Object? userId = null,
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_VoteDTO(
      availableBallots: null == availableBallots
          ? _value.availableBallots
          : availableBallots // ignore: cast_nullable_to_non_nullable
              as int,
      issuedBallots: null == issuedBallots
          ? _value.issuedBallots
          : issuedBallots // ignore: cast_nullable_to_non_nullable
              as int,
      usedBallots: null == usedBallots
          ? _value.usedBallots
          : usedBallots // ignore: cast_nullable_to_non_nullable
              as int,
      selectedCandidate: null == selectedCandidate
          ? _value.selectedCandidate
          : selectedCandidate // ignore: cast_nullable_to_non_nullable
              as String,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoteDTO implements _VoteDTO {
  const _$_VoteDTO(
      {required this.availableBallots,
      required this.issuedBallots,
      required this.usedBallots,
      required this.selectedCandidate,
      required this.voteCount,
      required this.userId,
      required this.id,
      required this.createdAt,
      required this.updatedAt});

  factory _$_VoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VoteDTOFromJson(json);

  @override
  final int availableBallots;
  @override
  final int issuedBallots;
  @override
  final int usedBallots;
  @override
  final String selectedCandidate;
  @override
  final int voteCount;
  @override
  final String userId;
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'VoteDTO(availableBallots: $availableBallots, issuedBallots: $issuedBallots, usedBallots: $usedBallots, selectedCandidate: $selectedCandidate, voteCount: $voteCount, userId: $userId, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoteDTO &&
            (identical(other.availableBallots, availableBallots) ||
                other.availableBallots == availableBallots) &&
            (identical(other.issuedBallots, issuedBallots) ||
                other.issuedBallots == issuedBallots) &&
            (identical(other.usedBallots, usedBallots) ||
                other.usedBallots == usedBallots) &&
            (identical(other.selectedCandidate, selectedCandidate) ||
                other.selectedCandidate == selectedCandidate) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      availableBallots,
      issuedBallots,
      usedBallots,
      selectedCandidate,
      voteCount,
      userId,
      id,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoteDTOCopyWith<_$_VoteDTO> get copyWith =>
      __$$_VoteDTOCopyWithImpl<_$_VoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoteDTOToJson(
      this,
    );
  }
}

abstract class _VoteDTO implements VoteDTO {
  const factory _VoteDTO(
      {required final int availableBallots,
      required final int issuedBallots,
      required final int usedBallots,
      required final String selectedCandidate,
      required final int voteCount,
      required final String userId,
      required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_VoteDTO;

  factory _VoteDTO.fromJson(Map<String, dynamic> json) = _$_VoteDTO.fromJson;

  @override
  int get availableBallots;
  @override
  int get issuedBallots;
  @override
  int get usedBallots;
  @override
  String get selectedCandidate;
  @override
  int get voteCount;
  @override
  String get userId;
  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_VoteDTOCopyWith<_$_VoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
