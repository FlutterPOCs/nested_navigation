import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class ProfileVerificationModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const ProfileVerificationPage());
  }
}
