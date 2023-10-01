import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_nasted_navigation_poc/core/app.paths.dart';

import 'find.root.dart';
import 'find_event/find_event.module.dart';
import 'find_person/find_person.module.dart';

class FindModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const FindRoot(), children: [
      ModuleRoute(AppPaths.findPersonCurrentPath, module: FindPersonModule()),
      ModuleRoute(AppPaths.findEventCurrentPath, module: FindEventModule()),
    ]);
  }
}
