import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/src/presenter/navigation/modular_book.dart';
import 'package:flutter_modular/src/presenter/navigation/modular_route_information_parser.dart';
import 'package:nested_navigation_flutter_modular_full_example/core/navigation_manager.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.to.addListener(() {
      log('Rota atual: ${Modular.to.path}');
      // EXAMPLE 2
      NavigationManager.currentRoute.value = Modular.to.path;
    });

    return MaterialApp.router(
      title: 'Flutter Modular Nested Navigation POC',
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      // routeInformationParser: CustomRouteParser(Modular.routeInformationParser),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

// class CustomRouteParser extends RouteInformationParser<ModularBook> {
//   final ModularRouteInformationParser baseParser;

//   CustomRouteParser(this.baseParser);

//   @override
//   Future<ModularBook> parseRouteInformation(
//       RouteInformation routeInformation) async {
//     final parsedRoute =
//         await baseParser.parseRouteInformation(routeInformation);
//     log('Rota processada: ${parsedRoute.uri.path}');
//     // NavigationManager.currentRoute.value = parsedRoute.uri.path;
//     return parsedRoute;
//   }

//   @override
//   RouteInformation? restoreRouteInformation(ModularBook configuration) {
//     // Restaurar as informações de rota se necessário
//     return baseParser.restoreRouteInformation(configuration);
//   }
// }
