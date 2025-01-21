import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

/// AppAbsolutPaths
class AppRoutes {
  /// MODULES
  static String findModule() => AppModule.findModule;
  /* */ static String findPersonModule() =>
      findModule() + FindModule.findPersonModule;
  /* */ static String findEventModule() =>
      findModule() + FindModule.findEventModule;
  static String profileModule() => AppModule.profileModule;
  /* */ static String profileSettingsModule() =>
      profileModule() + ProfileModule.profileSettingsModule;
  /* */ static String profileVerificationModule() =>
      profileModule() + ProfileModule.profileVerificationModule;

  /// PAGES
  /* */ /* */ static String findPersonPage =
      findPersonModule() + FindPersonModule.findPersonPage;
  /* */ /* */ /* */ static String findPersonDetailsPage =
      findPersonModule() + FindPersonModule.findPersonDetailsPage;
  /* */ /* */ static String findEventPage =
      findEventModule() + FindEventModule.findEventPage;
  /* */ /* */ static String profileSettingsPage =
      profileSettingsModule() + ProfileSettingsModule.profileSettingsPage;
  /* */ /* */ static String profileVerificationPage =
      profileVerificationModule() +
          ProfileVerificationModule.profileVerificationPage;
}
