import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigatorManager {
  static ValueNotifier<String?> currentRoute = ValueNotifier(null);

  static void navigate(String route) {
    if (route.isNotEmpty) {
      log('currentRoute >>> $route');
      Modular.to.navigate(route);
    }
  }

  static void pushNamed(String route) {
    if (route.isNotEmpty) {
      log('currentRoute >>> $route');
      Modular.to.pushNamed(route);
    }
  }
}
