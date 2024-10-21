import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_medium_example/core/app.paths.dart';
import 'package:nested_navigation_flutter_modular_medium_example/modules/find/find/find.module.dart';
import 'package:nested_navigation_flutter_modular_medium_example/modules/profile/profile.page.dart';

import 'app.root.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const AppRoot(), children: [
      ModuleRoute(AppPaths.find, module: FindModule()),
      ChildRoute(AppPaths.profile, child: (_) => const ProfilePage()),
    ]);
  }
}
