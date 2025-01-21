import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

import 'app.root.dart';

class AppModule extends Module {
  static const String findPath = '/find';
  static const String profilePath = '/profile';

  @override
  void routes(r) {
    r.child('/', child: (context) => const AppRoot(), children: [
      ModuleRoute(findPath, module: FindModule()),
      ModuleRoute(profilePath, module: ProfileModule()),
    ]);
  }
}