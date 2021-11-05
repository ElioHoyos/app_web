import 'package:app_web/locator.dart';
import 'package:flutter/material.dart';
import 'package:app_web/router/route_generator.dart';
import 'package:app_web/ui/layout/main_layout_page.dart';

import 'package:app_web/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
