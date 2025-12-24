import 'package:appwrite/appwrite.dart';
import 'package:bushido/services/common/environment.dart';
import 'package:bushido/services/realtime_service.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:flutter/foundation.dart';
import 'package:bushido/app/app.logger.dart';
import 'package:bushido/services/common/vote_model.dart';

class VoteService {
  final _realtime = locator<RealtimeService>();
  final _log = log('VoteService');

  final ValueNotifier<List<VoteModel>> _listOfVotes = ValueNotifier([]);
  ValueListenable<List<VoteModel>> get listOfVotes => _listOfVotes;

  void init() {
    _realtime.messages.listen((message) {
      if (message.channels.contains(Environment.votesRowChannel)) {
        _handleRealtimeMessage(message);
      }
    });
  }

  void _handleRealtimeMessage(RealtimeMessage message) {
    _log.i('Vote update: ${message.events}');
    // Zelfde logic als hierboven
  }
}
