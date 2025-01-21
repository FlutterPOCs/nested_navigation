import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class FindEventModule extends Module {
  static const String findEventPage = '/';

  @override
  void routes(r) {
    r.child(findEventPage, child: (context) => const FindEventPage());
  }
}
