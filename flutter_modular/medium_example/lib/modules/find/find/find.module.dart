import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_medium_example/core/app.paths.dart';

import 'find.details.page.dart';
import 'find.page.dart';

class FindModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const FindPage());
    r.child(AppPaths.details, child: (context) => const FindDetailsPage());
  }
}
