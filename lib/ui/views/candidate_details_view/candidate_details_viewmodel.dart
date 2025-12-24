import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/common/vote_model.dart';
import 'package:bushido/services/vote_service.dart';
import 'package:stacked/stacked.dart';

class CandidateDetailsViewModel extends BaseViewModel {
  CandidateDetailsViewModel() : _voteService = locator<VoteService>();

  final VoteService _voteService;

  void init() {
    // _voteService.stream();
  }

  List<VoteModel> get listOfVotes => _voteService.listOfVotes.value;
}
