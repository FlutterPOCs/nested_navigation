import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

enum FindRootPageType {
  person,
  event,
}

abstract class FindRootScreenViewModel extends StatelessWidget {
  const FindRootScreenViewModel({super.key});

  FindRootPageType _getRootType(int value) => switch (value) {
        0 => FindRootPageType.person,
        1 => FindRootPageType.event,
        _ => FindRootPageType.person,
      };

  void rootNavigate(FindRootPageType value) => switch (value) {
        FindRootPageType.person =>
          NavigatorManager.navigate(AppRoutes.findPersonPage),
        FindRootPageType.event =>
          NavigatorManager.navigate(AppRoutes.findEventPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}