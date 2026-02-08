import 'package:bushido/services/common/environment.dart';
import 'package:bushido/services/common/news_dto.dart';
import 'package:bushido/services/database_api.dart';
import 'package:flutter/foundation.dart';

import '../app/app.locator.dart';
import '../app/app.logger.dart';

class NewsService {
  final _log = log('NewsService');
  final _databaseAPI = locator<DatabaseAPI>();

  final ValueNotifier<List<NewsDTO>> _news = ValueNotifier<List<NewsDTO>>([]);
  ValueListenable<List<NewsDTO>> get news => _news;

  Future<List<NewsDTO>> getAllNews() async {
    // Get all documents
    try {
      final allNews = await _databaseAPI.getALlRows(tableId: Environment.newsTableId);

      // Convert to NewsDTO and put in list
      if (allNews == null || allNews.documents.isEmpty) {
        _log.w('No news articles found');
        return _news.value = [];
      } else {
        _log.i('${allNews.documents.length} incoming news articles');
        _news.value = allNews.documents.map((doc) => NewsDTO.fromAppwrite(doc.data)).toList();
        return _news.value;
      }
    } catch (e) {
      _log.e('An error has occurred while retrieving the news');
      return _news.value = [];
    }
  }
}
