import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class FindEventPage extends StatelessWidget {
  const FindEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Event Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigatorManager.navigate(AppRoutes.findPersonPage);
          },
          child: const Text('Navigate to "Find Person Page"'),
        ),
      ),
    );
  }
}
