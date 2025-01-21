import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

enum FindRootType {
  person,
  event,
}

abstract class FindRootScreenViewModel extends StatelessWidget {
  const FindRootScreenViewModel({super.key});

  FindRootType _getRootType(int value) => switch (value) {
        0 => FindRootType.person,
        1 => FindRootType.event,
        _ => FindRootType.person,
      };

  void rootNavigate(FindRootType value) => switch (value) {
        FindRootType.person =>
          NavigatorManager.navigate(AppRoutes.findPersonPage),
        FindRootType.event =>
          NavigatorManager.navigate(AppRoutes.findEventPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}