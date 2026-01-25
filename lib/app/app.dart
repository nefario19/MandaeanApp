import 'package:bushido/services/channel_registry_service.dart';
import 'package:bushido/services/realtime_service.dart';
import 'package:bushido/services/vote_service.dart';
import 'package:bushido/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:bushido/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:bushido/ui/views/home/home_view.dart';
import 'package:bushido/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bushido/services/client_api.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:bushido/ui/views/login/login_view.dart';
import 'package:bushido/services/account_api.dart';
import 'package:bushido/ui/views/register/register_view.dart';
import 'package:bushido/services/app_user_service.dart';
import 'package:bushido/ui/views/candidate_details_view/candidate_details_view.dart';
import 'package:bushido/services/database_api.dart';

@StackedApp(
  logger: StackedLogger(logHelperName: 'log'),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: CandidateDetailsView),
// @stacked-route
  ],
  dependencies: [
    Singleton(classType: ClientAPI),
    Singleton(classType: AccountAPI),
    Singleton(classType: RealtimeService),
    Singleton(classType: ChannelRegistryService),
    Singleton(classType: AuthService),
    Singleton(classType: DatabaseAPI),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AppUserService),
    LazySingleton(classType: VoteService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
