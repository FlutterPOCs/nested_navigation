import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class ProfileSettingsModule extends Module {
  static const String initialPath = '/';

  @override
  void routes(r) {
    r.child(initialPath, child: (context) => const ProfileSettingsPage());
  }
}
