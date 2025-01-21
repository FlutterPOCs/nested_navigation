import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class FindPersonDetailsPage extends StatelessWidget {
  const FindPersonDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Person Details Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationManager.navigate(AppRoutes.profileSettingsRoute);
          },
          child: const Text('Navigate to "profile Settings Page"'),
        ),
      ),
    );
  }
}
