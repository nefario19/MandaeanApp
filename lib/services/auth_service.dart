import 'dart:async';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.logger.dart';
import 'package:bushido/services/account_api.dart';
import 'package:bushido/services/channel_registry_service.dart';
import 'package:bushido/services/common/event_type.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  final _accountService = locator<AccountAPI>();
  late final ChannelRegistryService _registry;
  final _log = log('AuthService');

  final ValueNotifier<Session?> currentSession = ValueNotifier(null);
  final ValueNotifier<User?> currentUser = ValueNotifier(null);

  AuthService() {
    _log.i('AuthService created');
  }

  /// Initialize auth state and subscribe to account changes.
  Future<void> init() async {
    _log.i('Starting initialization');
    currentSession.value = null;
    currentUser.value = null;
    _registry = locator<ChannelRegistryService>();

    try {
      await _loadCurrentUser();
      _registry.register(EventType.account, _handleAccountMessage);
    } catch (e, s) {
      _log.e('Auth init failed', error: e, stackTrace: s);
      rethrow;
    }
    _log.i('Initialized');
  }

  Future<void> _loadCurrentUser() async {
    final user = null;

    if (user != null) {
      currentUser.value = user;
      final sessions = await _accountService.getSessions();

      if (sessions.isNotEmpty) {
        currentSession.value = sessions.first;
        _log.i('Restored session: ${currentSession.value?.$id}');
      } else {
        _log.i('No active sessions found');
      }
    } else {
      _log.i('No user logged in');
      currentUser.value = null;
      currentSession.value = null;
    }
  }

  Future<Session> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final session = await _accountService.login(email, password);
      final user = await _accountService.getCurrentUser();

      currentSession.value = session;
      currentUser.value = user;

      _log.i('Login successful: ${session.$id} (${user?.email})');
      return session;
    } on AppwriteException catch (e, s) {
      _log.e('Login failed: ${e.message}', error: e, stackTrace: s);
      rethrow;
    }
  }

  Future<void> signOut() async {
    final sessionId = currentSession.value?.$id;
    if (sessionId == null) {
      _log.w('No active session to logout');
      return;
    }

    try {
      await _accountService.deleteSession(sessionId: sessionId);
      _log.i('Logout requested for session $sessionId');
      currentSession.value = null;
      currentUser.value = null;
    } catch (e, s) {
      _log.e('Logout failed', error: e, stackTrace: s);
      currentSession.value = null;
      currentUser.value = null;
    }
  }

  Future<bool> isLoggedIn() async {
    try {
      final user = await _accountService.getCurrentUser();
      return user != null;
    } catch (_) {
      return false;
    }
  }

  Future<User> registerUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      final user = await _accountService.createUser(
        email,
        password,
        firstName,
        lastName,
      );
      _log.i('User registered: ${user.email}');
      currentUser.value = user;
      return user;
    } on AppwriteException catch (e, s) {
      _log.e('Registration failed: ${e.message}', error: e, stackTrace: s);
      rethrow;
    }
  }

  void _handleAccountMessage(RealtimeMessage message) {
    _log.d('Account event: ${message.events}');
    final isSessionDeleteEvent = message.events.any(
      (messageString) =>
          messageString.startsWith('users.') &&
          messageString.contains('.sessions.') &&
          messageString.endsWith('.delete'),
    );

    if (isSessionDeleteEvent) {
      final userId = message.payload['\$id'] as String?;
      if (userId == currentUser.value?.$id) {
        _log.i('Current session deleted remotely');
        currentSession.value = null;
        currentUser.value = null;
      }
    }
  }
}
