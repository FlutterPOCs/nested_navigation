import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

import 'find.root.screen.dart';

class FindModule extends Module {
  static const String findPersonModule = '/person';
  static const String findEventModule = '/event';

  @override
  void routes(r) {
    r.child('/', child: (context) => const FindRootScreen(), children: [
      ModuleRoute(findPersonModule, module: FindPersonModule()),
      ModuleRoute(findEventModule, module: FindEventModule()),
    ]);
  }
}
