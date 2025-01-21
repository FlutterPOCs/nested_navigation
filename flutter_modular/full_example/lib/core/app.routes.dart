import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

/// AppAbsolutPaths
class AppRoutes {
  /// AppModule
  static String find() => AppModule.findPath;
  static String profile() => AppModule.profilePath;

  /// FindModule
  /* */ static String findPersonRoute =
      find() + FindModule.personPath; // FindPersonModule initialPath
  /* */ static String findEventRoute =
      find() + FindModule.eventPath; // FindEventModule initialPath

  /// FindPersonModule
  /* */ /* */ static String findPersonDetailsRoute =
      findPersonRoute + FindPersonModule.detailsPath;

  /// ProfileModule
  /* */ static String profileSettingsRoute = profile() + ProfileModule.settingsPath; // ProfileSettingsModule initialPath
  /* */ static String profileVerificationRoute = profile() + ProfileModule.verificationPath; // ProfileVerificationModule initialPath
}
