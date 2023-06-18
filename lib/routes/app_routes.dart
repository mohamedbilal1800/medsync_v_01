import 'package:flutter/material.dart';
import 'package:medsync/presentation/welcome_screen/welcome_screen.dart';
import 'package:medsync/presentation/welcome_screen_spacing_screen/welcome_screen_spacing_screen.dart';
import 'package:medsync/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:medsync/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:medsync/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:medsync/presentation/login_two_screen/login_two_screen.dart';
import 'package:medsync/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:medsync/presentation/login_one_screen/login_one_screen.dart';
import 'package:medsync/presentation/password_remider_step_one_screen/password_remider_step_one_screen.dart';
import 'package:medsync/presentation/password_remider_step_two_screen/password_remider_step_two_screen.dart';
import 'package:medsync/presentation/password_remider_step_three_screen/password_remider_step_three_screen.dart';
import 'package:medsync/presentation/home_screen/home_screen.dart';
import 'package:medsync/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:medsync/presentation/profile_edit_form_screen/profile_edit_form_screen.dart';
import 'package:medsync/presentation/compliance_historyone_screen/compliance_historyone_screen.dart';
import 'package:medsync/presentation/compliance_historytwo_screen/compliance_historytwo_screen.dart';
import 'package:medsync/presentation/compliance_historythree_screen/compliance_historythree_screen.dart';
import 'package:medsync/presentation/compliance_historyfour_screen/compliance_historyfour_screen.dart';
import 'package:medsync/presentation/compliance_historyfive_screen/compliance_historyfive_screen.dart';
import 'package:medsync/presentation/compliance_historysix_screen/compliance_historysix_screen.dart';
import 'package:medsync/presentation/medical_history_one_screen/medical_history_one_screen.dart';
import 'package:medsync/presentation/medical_history_two_screen/medical_history_two_screen.dart';
import 'package:medsync/presentation/medical_history_three_screen/medical_history_three_screen.dart';
import 'package:medsync/presentation/medical_history_four_screen/medical_history_four_screen.dart';
import 'package:medsync/presentation/medical_history_five_screen/medical_history_five_screen.dart';
import 'package:medsync/presentation/medical_history_six_screen/medical_history_six_screen.dart';
import 'package:medsync/presentation/settings_screen/settings_screen.dart';
import 'package:medsync/presentation/personal_data_one_screen/personal_data_one_screen.dart';
import 'package:medsync/presentation/personal_data_name_screen/personal_data_name_screen.dart';
import 'package:medsync/presentation/personal_data_e_mail_screen/personal_data_e_mail_screen.dart';
import 'package:medsync/presentation/change_password_screen/change_password_screen.dart';
import 'package:medsync/presentation/change_password_success_screen/change_password_success_screen.dart';
import 'package:medsync/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:medsync/presentation/notification_settings_spacing_screen/notification_settings_spacing_screen.dart';
import 'package:medsync/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:medsync/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String welcomeScreenSpacingScreen =
      '/welcome_screen_spacing_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String passwordRemiderStepOneScreen =
      '/password_remider_step_one_screen';

  static const String passwordRemiderStepTwoScreen =
      '/password_remider_step_two_screen';

  static const String passwordRemiderStepThreeScreen =
      '/password_remider_step_three_screen';

  static const String homeScreen = '/home_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileEditFormScreen = '/profile_edit_form_screen';

  static const String complianceHistoryoneScreen =
      '/compliance_historyone_screen';

  static const String complianceHistorytwoScreen =
      '/compliance_historytwo_screen';

  static const String complianceHistorythreeScreen =
      '/compliance_historythree_screen';

  static const String complianceHistoryfourScreen =
      '/compliance_historyfour_screen';

  static const String complianceHistoryfiveScreen =
      '/compliance_historyfive_screen';

  static const String complianceHistorysixScreen =
      '/compliance_historysix_screen';

  static const String medicalHistoryOneScreen = '/medical_history_one_screen';

  static const String medicalHistoryTwoScreen = '/medical_history_two_screen';

  static const String medicalHistoryThreeScreen =
      '/medical_history_three_screen';

  static const String medicalHistoryFourScreen = '/medical_history_four_screen';

  static const String medicalHistoryFiveScreen = '/medical_history_five_screen';

  static const String medicalHistorySixScreen = '/medical_history_six_screen';

  static const String settingsScreen = '/settings_screen';

  static const String personalDataOneScreen = '/personal_data_one_screen';

  static const String personalDataNameScreen = '/personal_data_name_screen';

  static const String personalDataEMailScreen = '/personal_data_e_mail_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String changePasswordSuccessScreen =
      '/change_password_success_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String notificationSettingsSpacingScreen =
      '/notification_settings_spacing_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    welcomeScreenSpacingScreen: (context) => WelcomeScreenSpacingScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    loginTwoScreen: (context) => LoginTwoScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    passwordRemiderStepOneScreen: (context) => PasswordRemiderStepOneScreen(),
    passwordRemiderStepTwoScreen: (context) => PasswordRemiderStepTwoScreen(),
    passwordRemiderStepThreeScreen: (context) =>
        PasswordRemiderStepThreeScreen(),
    homeScreen: (context) => HomeScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    profileEditFormScreen: (context) => ProfileEditFormScreen(),
    complianceHistoryoneScreen: (context) => ComplianceHistoryoneScreen(),
    complianceHistorytwoScreen: (context) => ComplianceHistorytwoScreen(),
    complianceHistorythreeScreen: (context) => ComplianceHistorythreeScreen(),
    complianceHistoryfourScreen: (context) => ComplianceHistoryfourScreen(),
    complianceHistoryfiveScreen: (context) => ComplianceHistoryfiveScreen(),
    complianceHistorysixScreen: (context) => ComplianceHistorysixScreen(),
    medicalHistoryOneScreen: (context) => MedicalHistoryOneScreen(),
    medicalHistoryTwoScreen: (context) => MedicalHistoryTwoScreen(),
    medicalHistoryThreeScreen: (context) => MedicalHistoryThreeScreen(),
    medicalHistoryFourScreen: (context) => MedicalHistoryFourScreen(),
    medicalHistoryFiveScreen: (context) => MedicalHistoryFiveScreen(),
    medicalHistorySixScreen: (context) => MedicalHistorySixScreen(),
    settingsScreen: (context) => SettingsScreen(),
    personalDataOneScreen: (context) => PersonalDataOneScreen(),
    personalDataNameScreen: (context) => PersonalDataNameScreen(),
    personalDataEMailScreen: (context) => PersonalDataEMailScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    changePasswordSuccessScreen: (context) => ChangePasswordSuccessScreen(),
    notificationSettingsScreen: (context) => NotificationSettingsScreen(),
    notificationSettingsSpacingScreen: (context) =>
        NotificationSettingsSpacingScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
