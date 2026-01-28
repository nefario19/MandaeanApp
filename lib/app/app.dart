import 'package:bushido/ui/views/news/news_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// Hier komen de automatische imports
import '../services/account_api.dart';
import '../services/auth_service.dart';
import '../services/channel_registry_service.dart';
import '../services/client_api.dart';
import '../services/database_api.dart';
import '../services/news_service.dart';
import '../services/realtime_service.dart';
import '../services/vote_service.dart';
import '../ui/bottom_sheets/notice/notice_sheet.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/views/candidate_details_view/candidate_details_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/register/register_view.dart';
import '../ui/views/startup/startup_view.dart';
// @stacked-import

@StackedApp(
  logger: StackedLogger(logHelperName: 'log'),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: CandidateDetailsView),
    MaterialRoute(page: NewsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: ClientAPI),
    LazySingleton(classType: NewsService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: AccountAPI),
    LazySingleton(classType: RealtimeService),
    LazySingleton(classType: VoteService),
    LazySingleton(classType: ChannelRegistryService),
    LazySingleton(classType: DatabaseAPI),
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
