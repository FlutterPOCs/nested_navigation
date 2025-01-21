import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/lib.dart';

class ProfileRootScreen extends ProfileRootScreenViewModel {
  const ProfileRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: NavigatorManager.currentRoute,
      builder: (__, value, _) {
        return Scaffold(
          body: Row(
            children: <Widget>[
              NavigationRail(
                selectedIndex:
                    value?.contains(AppRoutes.profileSettingsPage) == true
                        ? 0
                        : 1,
                onDestinationSelected: onDestinationSelected,
                labelType: NavigationRailLabelType.all,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.verified),
                    label: Text('Verification'),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              const Expanded(
                child: RouterOutlet(),
              ),
            ],
          ),
        );
      },
    );
  }
}
