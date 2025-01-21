import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

import 'core/main/app.widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
