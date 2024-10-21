import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_medium_example/core/app.routes.dart';
import 'package:nested_navigation_flutter_modular_medium_example/core/navigation.manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationManager.navigate(AppRoutes.find);
          },
          child: const Text('Navigate to "Find Page"'),
        ),
      ),
    );
  }
}
