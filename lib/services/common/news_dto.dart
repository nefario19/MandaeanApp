import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDTO with _$NewsDTO {
  const factory NewsDTO({
    required String id,
    required String title,
    required String content,
    required String authorName,
    required DateTime publishedAt,
    @Default(false) bool isRtl,
    String? imageUrl,
  }) = _NewsDTO;

  factory NewsDTO.fromJson(Map<String, dynamic> json) =>
      _$NewsDTOFromJson(json);

  factory NewsDTO.fromAppwrite(Map<String, dynamic> doc) {
    return NewsDTO(
      id: (doc['id'] ?? '') as String,
      title: (doc['title'] ?? '') as String,
      content: (doc['content'] ?? '') as String,
      authorName: (doc['authorName'] ?? 'Anoniem') as String,
      publishedAt: DateTime.parse(
          (doc['publishedAt'] ?? DateTime.now().toIso8601String()) as String),
      isRtl: (doc['isRtl'] ?? false) as bool,
      imageUrl: doc['imageUrl'] as String?,
    );
  }
}
