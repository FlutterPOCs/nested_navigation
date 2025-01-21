import 'package:flutter_modular/flutter_modular.dart';

import 'find_person.details.page.dart';
import 'find_person.page.dart';

class FindPersonModule extends Module {
  static const String findPersonPage = '/';
  static const String findPersonDetailsPage = '/details';

  @override
  void routes(r) {
    r.child(findPersonPage, child: (context) => const FindPersonPage());
    r.child(findPersonDetailsPage,
        child: (context) => const FindPersonDetailsPage());
  }
}
