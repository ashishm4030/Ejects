import 'package:get/get.dart';

import '../modules/AddLinkScreen/bindings/add_link_screen_binding.dart';
import '../modules/AddLinkScreen/views/add_link_screen_view.dart';
import '../modules/AddPhotoScreen/bindings/add_photo_screen_binding.dart';
import '../modules/AddPhotoScreen/views/add_photo_screen_view.dart';
import '../modules/ChangePasswordScreen/bindings/change_password_screen_binding.dart';
import '../modules/ChangePasswordScreen/views/change_password_screen_view.dart';
import '../modules/CommentScreen/bindings/comment_screen_binding.dart';
import '../modules/CommentScreen/views/comment_screen_view.dart';
import '../modules/CreateAccountScreen/bindings/create_account_screen_binding.dart';
import '../modules/CreateAccountScreen/views/create_account_screen_view.dart';
import '../modules/DailyJournalEntry/bindings/daily_journal_entry_binding.dart';
import '../modules/DailyJournalEntry/views/daily_journal_entry_view.dart';
import '../modules/ForgotPasswordScreen/bindings/forgot_password_screen_binding.dart';
import '../modules/ForgotPasswordScreen/views/forgot_password_screen_view.dart';
import '../modules/LoginScreen/bindings/login_screen_binding.dart';
import '../modules/LoginScreen/views/login_screen_view.dart';
import '../modules/MainScreen/bindings/main_screen_binding.dart';
import '../modules/MainScreen/views/main_screen_view.dart';
import '../modules/NotificationScreen/bindings/notification_screen_binding.dart';
import '../modules/NotificationScreen/views/notification_screen_view.dart';
import '../modules/OtpVerifyScreen/bindings/otp_verify_screen_binding.dart';
import '../modules/OtpVerifyScreen/views/otp_verify_screen_view.dart';
import '../modules/PersonalInformation/bindings/personal_information_binding.dart';
import '../modules/PersonalInformation/views/personal_information_view.dart';
import '../modules/ProfileScreen/bindings/profile_screen_binding.dart';
import '../modules/ProfileScreen/views/profile_screen_view.dart';
import '../modules/ResetPasswordScreen/bindings/reset_password_screen_binding.dart';
import '../modules/ResetPasswordScreen/views/reset_password_screen_view.dart';
import '../modules/SearchScreen/bindings/search_screen_binding.dart';
import '../modules/SearchScreen/views/search_screen_view.dart';
import '../modules/SettingScreen/bindings/setting_screen_binding.dart';
import '../modules/SettingScreen/views/setting_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/selectLangaguesScreen/bindings/select_langagues_screen_binding.dart';
import '../modules/selectLangaguesScreen/views/select_langagues_screen_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_LANGAGUES_SCREEN,
      page: () => SelectLangaguesScreenView(),
      binding: SelectLangaguesScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_SCREEN,
      page: () => ForgotPasswordScreenView(),
      binding: ForgotPasswordScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT_SCREEN,
      page: () => CreateAccountScreenView(),
      binding: CreateAccountScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFY_SCREEN,
      page: () => OtpVerifyScreenView(),
      binding: OtpVerifyScreenBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD_SCREEN,
      page: () => ResetPasswordScreenView(),
      binding: ResetPasswordScreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_SCREEN,
      page: () => SearchScreenView(),
      binding: SearchScreenBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_SCREEN,
      page: () => NotificationScreenView(),
      binding: NotificationScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PHOTO_SCREEN,
      page: () => AddPhotoScreenView(),
      binding: AddPhotoScreenBinding(),
    ),
    GetPage(
      name: _Paths.DAILY_JOURNAL_ENTRY,
      page: () => DailyJournalEntryView(),
      binding: DailyJournalEntryBinding(),
    ),
    GetPage(
      name: _Paths.ADD_LINK_SCREEN,
      page: () => AddLinkScreenView(),
      binding: AddLinkScreenBinding(),
    ),
    GetPage(
      name: _Paths.COMMENT_SCREEN,
      page: () => CommentScreenView(),
      binding: CommentScreenBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_SCREEN,
      page: () => SettingScreenView(),
      binding: SettingScreenBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_INFORMATION,
      page: () => PersonalInformationView(),
      binding: PersonalInformationBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD_SCREEN,
      page: () => ChangePasswordScreenView(),
      binding: ChangePasswordScreenBinding(),
    ),
  ];
}
