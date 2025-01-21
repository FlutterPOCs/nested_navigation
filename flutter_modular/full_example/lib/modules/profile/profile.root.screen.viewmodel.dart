import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

enum ProfileRootType {
  settings,
  verification,
}

abstract class ProfileRootScreenViewModel extends StatelessWidget {
  const ProfileRootScreenViewModel({super.key});

  ProfileRootType _getRootType(int value) => switch (value) {
        0 => ProfileRootType.settings,
        1 => ProfileRootType.verification,
        _ => ProfileRootType.settings,
      };

  void rootNavigate(ProfileRootType value) => switch (value) {
        ProfileRootType.settings =>
          NavigatorManager.navigate(AppRoutes.profileSettingsPage),
        ProfileRootType.verification =>
          NavigatorManager.navigate(AppRoutes.profileVerificationPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}