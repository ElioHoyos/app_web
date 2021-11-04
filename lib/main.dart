import 'package:app_web/ui/pages/counter_page.dart';
import 'package:app_web/ui/pages/counter_provider_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruta App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/stateful',
      routes: {
        '/stateful': (_) => CounterPage(),
        '/provider': (_) => CounterProviderPage(),
      },
    );
  }
}
