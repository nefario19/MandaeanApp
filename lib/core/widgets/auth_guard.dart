import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.router.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthGuard extends StatefulWidget {
  final Widget child;
  const AuthGuard({required this.child, super.key});

  @override
  State<AuthGuard> createState() => _AuthGuardState();
}

class _AuthGuardState extends State<AuthGuard> {
  final _authService = locator<AuthService>();
  late final VoidCallback _listener;

  @override
  void initState() {
    super.initState();
    _listener = () {
      if (_authService.currentSession.value == null) {
        // Navigeren naar LoginView als de session weg is
        locator<NavigationService>().replaceWithLoginView();
      }
    };
    _authService.currentSession.addListener(_listener);
  }

  @override
  void dispose() {
    _authService.currentSession.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
