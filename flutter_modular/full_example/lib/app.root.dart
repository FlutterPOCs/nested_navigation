import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

enum AppRootType {
  find,
  profle,
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

abstract class AppRootViewModel extends State<AppRoot> {
  @override
  void initState() {
    NavigationManager.navigate(AppRoutes.findPersonPage);
    super.initState();
  }

  AppRootType _getRootType(int value) => switch (value) {
        0 => AppRootType.find,
        1 => AppRootType.profle,
        _ => AppRootType.find,
      };

  void rootNavigate(AppRootType value) => switch (value) {
        AppRootType.find => NavigationManager.navigate(AppRoutes.findPersonPage),
        AppRootType.profle => NavigationManager.navigate(AppRoutes.profileSettingsPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }
}

class _AppRootState extends AppRootViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: NavigationManager.currentRoute,
        builder: (__, value, _) {
          return NavigationBar(
            selectedIndex: value?.contains(AppRoutes.findModule()) == true ? 0 : 1,
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
