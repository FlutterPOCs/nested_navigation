import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

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
            NavigatorManager.navigate(AppRoutes.profileVerificationPage);
          },
          child: const Text('Navigate to "Profile Veification Page"'),
        ),
      ),
    );
  }
}
