import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class ProfileVerificationModule extends Module {
  static const String profileVerificationPage = '/';

  @override
  void routes(r) {
    r.child(profileVerificationPage, child: (context) => const ProfileVerificationPage());
  }
}
