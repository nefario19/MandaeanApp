import 'dart:async';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:bushido/services/client_api.dart';
import 'package:bushido/services/common/environment.dart';
import 'package:flutter/foundation.dart';

import '../app/app.logger.dart';

class RealtimeService {
  RealtimeService() : _realtime = Realtime(locator<ClientAPI>().client);
  final _log = log('Realtime Service');

  final Realtime _realtime;
  late final ValueNotifier<Session?>? _session;

  RealtimeSubscription? _subscription;
  final _controller = StreamController<RealtimeMessage>.broadcast();
  Stream<RealtimeMessage> get messages => _controller.stream;

  void init() {
    _log.i('Starting initialization');

    _session = locator<AuthService>().currentSession;
    _session!.addListener(_onSessionChange);

    _log.i('Initialized');
  }

  void _onSessionChange() {
    if (_session?.value == null) {
      stopSubscription();
    } else {
      stopSubscription();
      startSubscription();
    }
  }

  void startSubscription() {
    _log.d('Starting $this');
    _subscription = _realtime.subscribe([
      Environment.accountChannel,
      Environment.votesRowChannel,
    ]);

    _subscription!.stream.listen(
      (message) {
        _controller.add(message);
      },
      onError: (e) {
        _log.f('Realtime error: $e');
      },
    );
  }

  void stopSubscription() {
    _log.d('Stopping $this');
    _subscription?.close();
    _subscription = null;
  }

  void dispose() {
    _session?.removeListener(_onSessionChange);
    stopSubscription();
    _controller.close();
  }
}
