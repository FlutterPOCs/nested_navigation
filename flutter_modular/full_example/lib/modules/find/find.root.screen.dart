import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class FindRootScreen extends FindRootScreenViewModel {
  const FindRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: ValueListenableBuilder(
          valueListenable: NavigatorManager.currentRoute,
          builder: (__, value, _) {
            return NavigationBar(
              selectedIndex:
                  value?.contains(AppRoutes.findPersonPage) == true ? 0 : 1,
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
