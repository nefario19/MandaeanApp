import 'package:bushido/core/widgets/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:bushido/app/app.bottomsheets.dart';
import 'package:bushido/app/app.dialogs.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/app/app.router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(
    const AuthGuard(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
