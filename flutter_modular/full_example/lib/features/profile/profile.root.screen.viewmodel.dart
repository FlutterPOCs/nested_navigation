import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

enum ProfileRootPageType {
  settings,
  verification,
}

abstract class ProfileRootScreenViewModel extends StatelessWidget {
  const ProfileRootScreenViewModel({super.key});

  ProfileRootPageType _getRootType(int value) => switch (value) {
        0 => ProfileRootPageType.settings,
        1 => ProfileRootPageType.verification,
        _ => ProfileRootPageType.settings,
      };

  void rootNavigate(ProfileRootPageType value) => switch (value) {
        ProfileRootPageType.settings =>
          NavigatorManager.navigate(AppRoutes.profileSettingsPage),
        ProfileRootPageType.verification =>
          NavigatorManager.navigate(AppRoutes.profileVerificationPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}