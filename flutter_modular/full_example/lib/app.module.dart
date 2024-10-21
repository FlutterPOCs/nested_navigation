import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/core/app.paths.dart';
import 'package:nested_navigation_flutter_modular_full_example/modules/profile/profile.module.dart';

import 'app.root.dart';
import 'modules/find/find.module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const AppRoot(), children: [
      ModuleRoute(AppPaths.find, module: FindModule()),
      ModuleRoute(AppPaths.profile, module: ProfileModule()),
    ]);
  }
}
