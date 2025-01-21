import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

import 'find.root.dart';
import 'find_event/find_event.module.dart';

class FindModule extends Module {
  static const String personPath = '/person';
  static const String eventPath = '/event';

  @override
  void routes(r) {
    r.child('/', child: (context) => const FindRoot(), children: [
      ModuleRoute(personPath, module: FindPersonModule()),
      ModuleRoute(eventPath, module: FindEventModule()),
    ]);
  }
}
