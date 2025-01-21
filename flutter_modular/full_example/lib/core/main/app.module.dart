import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class AppModule extends Module {
  static const String findModule = '/find';
  static const String profileModule = '/profile';

  @override
  void routes(r) {
    r.child('/', child: (context) => const AppRootScreen(), children: [
      ModuleRoute(findModule, module: FindModule()),
      ModuleRoute(profileModule, module: ProfileModule()),
    ]);
  }
}