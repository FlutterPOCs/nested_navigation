import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

enum AppRootPageType {
  find,
  profile,
}


abstract class AppRootScreenViewModel extends State<AppRootScreen> {
  @override
  void initState() {
    NavigatorManager.navigate(AppRoutes.findPersonPage);
    super.initState();
  }

  AppRootPageType _getRootType(int value) => switch (value) {
        0 => AppRootPageType.find,
        1 => AppRootPageType.profile,
        _ => AppRootPageType.find,
      };

  void rootNavigate(AppRootPageType value) => switch (value) {
        AppRootPageType.find => NavigatorManager.navigate(AppRoutes.findPersonPage),
        AppRootPageType.profile => NavigatorManager.navigate(AppRoutes.profileSettingsPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}