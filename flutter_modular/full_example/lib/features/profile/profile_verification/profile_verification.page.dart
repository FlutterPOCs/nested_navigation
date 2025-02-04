import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class ProfileVerificationPage extends StatelessWidget {
  const ProfileVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Veification Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigatorManager.navigate(AppRoutes.findEventPage);
          },
          child: const Text('Navigate to "Find Event Page"'),
        ),
      ),
    );
  }
}
