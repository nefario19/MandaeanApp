import 'package:appwrite/models.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/account_api.dart';
import 'package:bushido/services/client_api.dart';

class AppUserService {
  final account = locator<AccountAPI>();
}
