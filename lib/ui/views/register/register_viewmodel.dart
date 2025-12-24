import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.router.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel with ListenableServiceMixin {
  final AuthService _authService = locator<AuthService>();
  final NavigationService _navigationService = locator<NavigationService>();

  final ValueNotifier<String> email = ValueNotifier('');
  final ValueNotifier<String> password = ValueNotifier('');
  final ValueNotifier<String> firstName = ValueNotifier('firstName');
  final ValueNotifier<String> lastName = ValueNotifier('lastName');
  final ValueNotifier<String?> errorMessage = ValueNotifier(null);

  RegisterViewModel() {
    listenToReactiveValues(
        [firstName, lastName, email, password, errorMessage]);
  }

  void setFirstName(String value) => firstName.value = value;
  void setLastName(String value) => lastName.value = value;
  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;
  void clearError() => errorMessage.value = null;

  Future<void> register() async {
    setBusy(true);
    clearError();

    try {
      await _authService.registerUser(
        email: email.value,
        password: password.value,
        firstName: firstName.value,
        lastName: lastName.value,
      );

      await _authService.signInWithEmail(
        email: email.value,
        password: password.value,
      );

      _navigationService.replaceWithHomeView();
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      setBusy(false);
    }
  }
}
