// lib/ui/views/startup/startup_viewmodel.dart
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.logger.dart';
import 'package:bushido/app/app.router.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:bushido/services/channel_registry_service.dart';
import 'package:bushido/services/realtime_service.dart';
import 'package:bushido/services/vote_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final RealtimeService _realtimeService = locator<RealtimeService>();
  final AuthService _authService = locator<AuthService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final VoteService _voteService = locator<VoteService>();
  final ChannelRegistryService _channelRegistryService =
      locator<ChannelRegistryService>();

  final _log = log('Start up');

  Future<void> runStartupLogic() async {
    _log.d('Running startup logic');
    setBusy(true);

    await _authService.init();
    _channelRegistryService.init();
    _realtimeService.init();

    try {
      final loggedIn = await _authService.isLoggedIn();
      _log.d('User loggedIn status: $loggedIn');

      if (loggedIn) {
        _navigationService.replaceWithHomeView();
        _log.d('Navigating to HomeView.');
      } else {
        _navigationService.replaceWithLoginView();
        _log.d('Navigating to LoginView.');
      }
    } catch (e) {
      _log.d('StartupViewModel: Error in runStartupLogic: $e');
      _navigationService.replaceWithLoginView();
    } finally {
      setBusy(false);
      _log.d('Startup logic finished');
    }
  }
}
