import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class ProfileModule extends Module {
  static const String settingsPath = '/settings';
  static const String verificationPath = '/verification';

  @override
  void routes(r) {
    r.child('/', child: (context) => const ProfileRoot(), children: [
      ModuleRoute(settingsPath, module: ProfileSettingsModule()),
      ModuleRoute(verificationPath, module: ProfileVerificationModule()),
    ]);
  }
}
