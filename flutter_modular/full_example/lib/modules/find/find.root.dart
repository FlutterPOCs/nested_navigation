import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

enum FindRootType {
  person,
  event,
}

class FindRoot extends StatelessWidget {
  const FindRoot({super.key});

  FindRootType _getRootType(int value) => switch (value) {
        0 => FindRootType.person,
        1 => FindRootType.event,
        _ => FindRootType.person,
      };

  void rootNavigate(FindRootType value) => switch (value) {
        FindRootType.person => NavigatorManager.navigate(AppRoutes.findPersonPage),
        FindRootType.event => NavigatorManager.navigate(AppRoutes.findEventPage),
      };

  void onDestinationSelected(int index) {
    final type = _getRootType(index);
    rootNavigate(type);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: ValueListenableBuilder(
          valueListenable: NavigatorManager.currentRoute,
          builder: (__, value, _) {
            return NavigationBar(
              selectedIndex: value?.contains(AppRoutes.findPersonPage) == true ? 0 : 1,
              onDestinationSelected: onDestinationSelected,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.people_alt_outlined),
                  label: 'Find Person',
                ),
                NavigationDestination(
                  icon: Icon(Icons.event_note),
                  label: 'Find Event',
                ),
              ],
            );
          },
        ),
      ),
      body: const RouterOutlet(),
    );
  }
}
