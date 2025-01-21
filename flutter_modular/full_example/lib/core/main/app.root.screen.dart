import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class AppRootScreen extends StatefulWidget {
  const AppRootScreen({super.key});

  @override
  State<AppRootScreen> createState() => _AppRootScreenState();
}

class _AppRootScreenState extends AppRootScreenViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: NavigatorManager.currentRoute,
        builder: (__, value, _) {
          return NavigationBar(
            selectedIndex:
                value?.contains(AppRoutes.findModule()) == true ? 0 : 1,
            onDestinationSelected: onDestinationSelected,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.search),
                label: 'Find',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_2),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
