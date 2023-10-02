import 'package:flutter/material.dart';
import 'package:flutter_modular_nasted_navigation_poc/core/app.routes.dart';
import 'package:flutter_modular_nasted_navigation_poc/core/navigation_manager.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationManager.navigate(
                AppRoutes.profileVerification);
          },
          child: const Text('Navigate to "Profile Veification Page"'),
        ),
      ),
    );
  }
}
