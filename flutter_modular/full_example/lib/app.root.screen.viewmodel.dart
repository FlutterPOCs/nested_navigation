import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

enum AppRootType {
  find,
  profile,
}


abstract class AppRootScreenViewModel extends State<AppRootScreen> {
  @override
  void initState() {
    NavigatorManager.navigate(AppRoutes.findPersonPage);
    super.initState();
  }

  AppRootType _getRootType(int value) => switch (value) {
        0 => AppRootType.find,
        1 => AppRootType.profile,
        _ => AppRootType.find,
      };

  void rootNavigate(AppRootType value) => switch (value) {
        AppRootType.find => NavigatorManager.navigate(AppRoutes.findPersonPage),
        AppRootType.profile => NavigatorManager.navigate(AppRoutes.profileSettingsPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}