import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class ProfileSettingsModule extends Module {
  static const String profileSettingsPage = '/';

  @override
  void routes(r) {
    r.child(profileSettingsPage, child: (context) => const ProfileSettingsPage());
  }
}
