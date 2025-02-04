import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class ProfileModule extends Module {
  static const String profileSettingsModule = '/settings';
  static const String profileVerificationModule = '/verification';

  @override
  void routes(r) {
    r.child('/', child: (context) => const ProfileRootScreen(), children: [
      ModuleRoute(profileSettingsModule, module: ProfileSettingsModule()),
      ModuleRoute(profileVerificationModule, module: ProfileVerificationModule()),
    ]);
  }
}
