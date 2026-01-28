// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsDTO _$NewsDTOFromJson(Map<String, dynamic> json) {
  return _NewsDTO.fromJson(json);
}

/// @nodoc
mixin _$NewsDTO {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isRtl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this NewsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsDTOCopyWith<NewsDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDTOCopyWith<$Res> {
  factory $NewsDTOCopyWith(NewsDTO value, $Res Function(NewsDTO) then) =
      _$NewsDTOCopyWithImpl<$Res, NewsDTO>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorName,
      DateTime createdAt,
      bool isRtl,
      String? imageUrl});
}

/// @nodoc
class _$NewsDTOCopyWithImpl<$Res, $Val extends NewsDTO>
    implements $NewsDTOCopyWith<$Res> {
  _$NewsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorName = null,
    Object? createdAt = null,
    Object? isRtl = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRtl: null == isRtl
          ? _value.isRtl
          : isRtl // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDTOImplCopyWith<$Res> implements $NewsDTOCopyWith<$Res> {
  factory _$$NewsDTOImplCopyWith(
          _$NewsDTOImpl value, $Res Function(_$NewsDTOImpl) then) =
      __$$NewsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorName,
      DateTime createdAt,
      bool isRtl,
      String? imageUrl});
}

/// @nodoc
class __$$NewsDTOImplCopyWithImpl<$Res>
    extends _$NewsDTOCopyWithImpl<$Res, _$NewsDTOImpl>
    implements _$$NewsDTOImplCopyWith<$Res> {
  __$$NewsDTOImplCopyWithImpl(
      _$NewsDTOImpl _value, $Res Function(_$NewsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorName = null,
    Object? createdAt = null,
    Object? isRtl = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$NewsDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRtl: null == isRtl
          ? _value.isRtl
          : isRtl // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDTOImpl implements _NewsDTO {
  const _$NewsDTOImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.authorName,
      required this.createdAt,
      this.isRtl = false,
      this.imageUrl});

  factory _$NewsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String authorName;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isRtl;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'NewsDTO(id: $id, title: $title, content: $content, authorName: $authorName, createdAt: $createdAt, isRtl: $isRtl, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isRtl, isRtl) || other.isRtl == isRtl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, content, authorName, createdAt, isRtl, imageUrl);

  /// Create a copy of NewsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDTOImplCopyWith<_$NewsDTOImpl> get copyWith =>
      __$$NewsDTOImplCopyWithImpl<_$NewsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDTOImplToJson(
      this,
    );
  }
}

abstract class _NewsDTO implements NewsDTO {
  const factory _NewsDTO(
      {required final String id,
      required final String title,
      required final String content,
      required final String authorName,
      required final DateTime createdAt,
      final bool isRtl,
      final String? imageUrl}) = _$NewsDTOImpl;

  factory _NewsDTO.fromJson(Map<String, dynamic> json) = _$NewsDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get authorName;
  @override
  DateTime get createdAt;
  @override
  bool get isRtl;
  @override
  String? get imageUrl;

  /// Create a copy of NewsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsDTOImplCopyWith<_$NewsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
