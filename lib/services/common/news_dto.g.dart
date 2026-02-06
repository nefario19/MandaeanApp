// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsDTOImpl _$$NewsDTOImplFromJson(Map<String, dynamic> json) =>
    _$NewsDTOImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      authorName: json['authorName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isRtl: json['isRtl'] as bool? ?? false,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$NewsDTOImplToJson(_$NewsDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'authorName': instance.authorName,
      'createdAt': instance.createdAt.toIso8601String(),
      'isRtl': instance.isRtl,
      'imageUrl': instance.imageUrl,
    };
