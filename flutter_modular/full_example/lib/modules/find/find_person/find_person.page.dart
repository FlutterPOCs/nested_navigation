import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class FindPersonPage extends StatelessWidget {
  const FindPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Person Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigatorManager.pushNamed(AppRoutes.findPersonDetailsPage);
          },
          child: const Text('Push to "Find Person Details Page"'),
        ),
      ),
    );
  }
}
