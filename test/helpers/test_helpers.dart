import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bushido/services/client_api.dart';
import 'package:bushido/services/auth_service.dart';
import 'package:bushido/services/account_api.dart';
import 'package:bushido/services/app_user_service.dart';
import 'package:bushido/services/hive_service.dart';
import 'package:bushido/services/database_api.dart';
import 'package:bushido/services/vote_service.dart';
import 'package:bushido/services/realtime_service.dart';
import 'package:bushido/services/channel_registry_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks(
  [],
  customMocks: [
    MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<ClientAPI>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<AuthService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<AccountAPI>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<AppUserService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<HiveService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<DatabaseAPI>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<VoteService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<RealtimeService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<ChannelRegistryService>(
        onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
  ],
)
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterAppwriteClientService();
  getAndRegisterAuthService();
  getAndRegisterAccountService();
  getAndRegisterAppUserService();
  getAndRegisterHiveService();
  getAndRegisterDatabaseApiService();
  getAndRegisterVoteService();
  getAndRegisterRealtimeService();
  getAndRegisterChannelRegistryService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(
    service.showCustomSheet<T, T>(
      enableDrag: anyNamed('enableDrag'),
      enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
      exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
      ignoreSafeArea: anyNamed('ignoreSafeArea'),
      isScrollControlled: anyNamed('isScrollControlled'),
      barrierDismissible: anyNamed('barrierDismissible'),
      additionalButtonTitle: anyNamed('additionalButtonTitle'),
      variant: anyNamed('variant'),
      title: anyNamed('title'),
      hasImage: anyNamed('hasImage'),
      imageUrl: anyNamed('imageUrl'),
      showIconInMainButton: anyNamed('showIconInMainButton'),
      mainButtonTitle: anyNamed('mainButtonTitle'),
      showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
      secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
      showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
      takesInput: anyNamed('takesInput'),
      barrierColor: anyNamed('barrierColor'),
      barrierLabel: anyNamed('barrierLabel'),
      customData: anyNamed('customData'),
      data: anyNamed('data'),
      description: anyNamed('description'),
    ),
  ).thenAnswer(
    (realInvocation) =>
        Future.value(showCustomSheetResponse ?? SheetResponse<T>()),
  );

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockAppwriteClientService getAndRegisterAppwriteClientService() {
  _removeRegistrationIfExists<ClientAPI>();
  final service = MockAppwriteClientService();
  locator.registerSingleton<ClientAPI>(service);
  return service;
}

MockAuthService getAndRegisterAuthService() {
  _removeRegistrationIfExists<AuthService>();
  final service = MockAuthService();
  locator.registerSingleton<AuthService>(service);
  return service;
}

MockAccountService getAndRegisterAccountService() {
  _removeRegistrationIfExists<AccountAPI>();
  final service = MockAccountService();
  locator.registerSingleton<AccountAPI>(service);
  return service;
}

MockAppUserService getAndRegisterAppUserService() {
  _removeRegistrationIfExists<AppUserService>();
  final service = MockAppUserService();
  locator.registerSingleton<AppUserService>(service);
  return service;
}

MockHiveService getAndRegisterHiveService() {
  _removeRegistrationIfExists<HiveService>();
  final service = MockHiveService();
  locator.registerSingleton<HiveService>(service);
  return service;
}

MockDatabaseApiService getAndRegisterDatabaseApiService() {
  _removeRegistrationIfExists<DatabaseAPI>();
  final service = MockDatabaseApiService();
  locator.registerSingleton<DatabaseAPI>(service);
  return service;
}

MockVoteService getAndRegisterVoteService() {
  _removeRegistrationIfExists<VoteService>();
  final service = MockVoteService();
  locator.registerSingleton<VoteService>(service);
  return service;
}

MockRealtimeService getAndRegisterRealtimeService() {
  _removeRegistrationIfExists<RealtimeService>();
  final service = MockRealtimeService();
  locator.registerSingleton<RealtimeService>(service);
  return service;
}

MockChannelRegistryService getAndRegisterChannelRegistryService() {
  _removeRegistrationIfExists<ChannelRegistryService>();
  final service = MockChannelRegistryService();
  locator.registerSingleton<ChannelRegistryService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
