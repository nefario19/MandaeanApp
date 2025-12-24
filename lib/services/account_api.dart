import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bushido/app/app.logger.dart';
import '../app/app.locator.dart';
import 'client_api.dart';

class AccountAPI {
  AccountAPI() : _account = Account(locator<ClientAPI>().client);

  final Account _account;
  final _log = log('Account API');

  Client get client {
    try {
      return _account.client;
    } catch (_) {
      return throw Exception('Appwrite Client is not initialized');
    }
  }

  Future<User?> getCurrentUser() async {
    try {
      return await _account.get();
    } catch (_) {
      return null;
    }
  }

  Future<Session> login(String email, String password) async {
    return await _account.createEmailPasswordSession(
        email: email, password: password);
  }

  Future<User> createUser(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    return await _account.create(
      userId: ID.unique(),
      email: email,
      password: password,
      name: '$firstName $lastName',
    );
  }

  Future<List<Session>> getSessions() async {
    final sessions = await _account.listSessions();
    return sessions.sessions;
  }

  Future<void> deleteSession({required String sessionId}) async {
    _account.deleteSession(sessionId: sessionId);
  }

  Future<void> deleteAllSessions() async {
    _account.deleteSessions();
  }

  Future<Preferences> getPreferences() async {
    try {
      return await _account.getPrefs();
    } catch (e) {
      throw Exception(
        'Could not get preferences for user: ${getCurrentUser().then((user) => user?.$id)}',
      );
    }
  }

  Future<void> updateEmail(
      {required String email, required String password}) async {
    await _account.updateEmail(email: email, password: password);
  }

  Future<void> updateName({required String name}) async {
    await _account.updateName(name: name);
  }

  Future<void> updatePassword(
      {required String password, required String oldPassword}) async {
    await _account.updatePassword(password: password, oldPassword: oldPassword);
  }
}
