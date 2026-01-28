import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.router.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel with ListenableServiceMixin {
  final AuthService _authService = locator<AuthService>();
  final NavigationService _navigationService = locator<NavigationService>();

  // --------------------------- State -------------------------------
  final ValueNotifier<String> email = ValueNotifier('');
  final ValueNotifier<String> password = ValueNotifier('');
  final ValueNotifier<String?> errorMessage = ValueNotifier(null);

  LoginViewModel() {
    listenToReactiveValues(
        [email, password, errorMessage, _authService.currentSession]);
  }

  // --------------------------- Mutators -------------------------------
  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;
  void clearError() => errorMessage.value = null;

  // --------------------------- Actions -------------------------------
  Future<void> login() async {
    setBusy(true);
    clearError();
    try {
      final session = await _authService.signInWithEmail(
        email: email.value,
        password: password.value,
      );
      _authService.currentSession.value = session;
      _navigationService.replaceWithNewsView();
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      setBusy(false);
    }
  }

  Future<void> signOut() async {
    setBusy(true);
    await _authService.signOut();
    setBusy(false);
  }
}
