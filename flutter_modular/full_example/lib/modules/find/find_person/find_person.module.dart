import 'package:flutter_modular/flutter_modular.dart';

import 'find_person.details.page.dart';
import 'find_person.page.dart';

class FindPersonModule extends Module {
  static const String initialPath = '/';
  static const String detailsPath = '/details';

  @override
  void routes(r) {
    r.child(initialPath, child: (context) => const FindPersonPage());
    r.child(detailsPath,
        child: (context) => const FindPersonDetailsPage());
  }
}
