import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nested_navigation_flutter_modular_full_example/exports.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.to.addListener(() {
      log('Rota atual: ${Modular.to.path}');
      NavigationManager.currentRoute.value = Modular.to.path;
    });

    return MaterialApp.router(
      title: 'Flutter Modular Nested Navigation POC',
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}