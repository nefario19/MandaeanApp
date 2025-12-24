import 'package:bushido/app/app.logger.dart';
import 'package:appwrite/appwrite.dart';
import 'package:bushido/services/common/environment.dart';

class ClientAPI {
  final _log = log('Client API');
  final Client _client;

  ClientAPI() : _client = Client() {
    _client
        .setEndpoint(Environment.appwritePublicEndpoint)
        .setProject(Environment.appwriteProjectId);
  }

  Client get client => _client;
}
