import 'package:bushido/app/app.router.dart';
import 'package:bushido/services/common/vote_model.dart';
import 'package:bushido/services/vote_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final AuthService _authService = locator<AuthService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final VoteService _voteService = locator<VoteService>();

  String get userFullName => _authService.currentUser.value?.name ?? 'Unknown';

  List<String> get listOfCandidates => ['Salah', 'Sam', 'Taif'];

  ValueListenable<List<VoteModel>> get listOfVotes {
    return _voteService.listOfVotes;
  }

  Future<void> signOut() async {
    setBusy(true);
    await _authService.signOut();
    setBusy(false);
    _navigationService.replaceWithLoginView();
  }

  void openCandidateDetailsView() {
    _navigationService.navigateToCandidateDetailsView();
  }

  List<Listenable> get listenableServices => [_authService.currentSession];
}
