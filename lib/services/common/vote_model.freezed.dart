// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VoteModel _$VoteModelFromJson(Map<String, dynamic> json) {
  return _VoteModel.fromJson(json);
}

/// @nodoc
mixin _$VoteModel {
  int get availableBallots => throw _privateConstructorUsedError;
  int get issuedBallots => throw _privateConstructorUsedError;
  int get usedBallots => throw _privateConstructorUsedError;
  String get selectedCandidate => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this VoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoteModelCopyWith<VoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteModelCopyWith<$Res> {
  factory $VoteModelCopyWith(VoteModel value, $Res Function(VoteModel) then) =
      _$VoteModelCopyWithImpl<$Res, VoteModel>;
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
class _$VoteModelCopyWithImpl<$Res, $Val extends VoteModel>
    implements $VoteModelCopyWith<$Res> {
  _$VoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoteModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$VoteModelImplCopyWith<$Res>
    implements $VoteModelCopyWith<$Res> {
  factory _$$VoteModelImplCopyWith(
          _$VoteModelImpl value, $Res Function(_$VoteModelImpl) then) =
      __$$VoteModelImplCopyWithImpl<$Res>;
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
class __$$VoteModelImplCopyWithImpl<$Res>
    extends _$VoteModelCopyWithImpl<$Res, _$VoteModelImpl>
    implements _$$VoteModelImplCopyWith<$Res> {
  __$$VoteModelImplCopyWithImpl(
      _$VoteModelImpl _value, $Res Function(_$VoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoteModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$VoteModelImpl(
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
class _$VoteModelImpl extends _VoteModel with DiagnosticableTreeMixin {
  const _$VoteModelImpl(
      {required this.availableBallots,
      required this.issuedBallots,
      required this.usedBallots,
      required this.selectedCandidate,
      required this.voteCount,
      required this.userId,
      required this.id,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$VoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteModelImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VoteModel(availableBallots: $availableBallots, issuedBallots: $issuedBallots, usedBallots: $usedBallots, selectedCandidate: $selectedCandidate, voteCount: $voteCount, userId: $userId, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VoteModel'))
      ..add(DiagnosticsProperty('availableBallots', availableBallots))
      ..add(DiagnosticsProperty('issuedBallots', issuedBallots))
      ..add(DiagnosticsProperty('usedBallots', usedBallots))
      ..add(DiagnosticsProperty('selectedCandidate', selectedCandidate))
      ..add(DiagnosticsProperty('voteCount', voteCount))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of VoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteModelImplCopyWith<_$VoteModelImpl> get copyWith =>
      __$$VoteModelImplCopyWithImpl<_$VoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteModelImplToJson(
      this,
    );
  }
}

abstract class _VoteModel extends VoteModel {
  const factory _VoteModel(
      {required final int availableBallots,
      required final int issuedBallots,
      required final int usedBallots,
      required final String selectedCandidate,
      required final int voteCount,
      required final String userId,
      required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$VoteModelImpl;
  const _VoteModel._() : super._();

  factory _VoteModel.fromJson(Map<String, dynamic> json) =
      _$VoteModelImpl.fromJson;

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

  /// Create a copy of VoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteModelImplCopyWith<_$VoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
