import 'package:bushido/services/news_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';

class NewsViewModel extends BaseViewModel {
  final _log = log('News ViewModel');
  final _newsService = locator<NewsService>();

  Future<void> init() async {
    _log.i('Opstarten NewsViewModel...');

    // De 'setBusy' is een cadeautje van Stacked.
    // Handig voor morgen als je een laad-icoontje wilt tonen!
    await runBusyFuture(_newsService.getAllNews());

    _log.i('Aantal artikelen in service: ${_newsService.news.value.length}');
  }
}
