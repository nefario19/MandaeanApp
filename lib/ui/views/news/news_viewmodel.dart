import 'package:bushido/services/common/news_dto.dart';
import 'package:bushido/services/news_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';

class NewsViewModel extends BaseViewModel {
  final _log = log('News ViewModel');
  final _newsService = locator<NewsService>();

  final ValueNotifier<List<NewsDTO>> _newsItems = ValueNotifier<List<NewsDTO>>([]);
  ValueListenable<List<NewsDTO>> get newsItems => _newsItems;

  Future<void> init() async {
    _log.i('Initializing NewsViewModel...');

    // De 'setBusy' is een cadeautje van Stacked.
    // Handig voor morgen als je een laad-icoontje wilt tonen!
    final news = await runBusyFuture(_newsService.getAllNews());

    _newsItems.value = news;
    notifyListeners();
    _log.i('News articles in service: ${_newsService.news.value.length}');
  }
}
