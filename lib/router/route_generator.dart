import 'package:app_web/ui/pages/counter_page.dart';
import 'package:app_web/ui/pages/counter_provider_page.dart';
import 'package:app_web/ui/pages/page_404.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterPage(), '/stateful');
      // return MaterialPageRoute(
      //     settings: RouteSettings(name: '/stateful'),
      //     builder: (_) => CounterPage());

      case '/provider':
        return _fadeRoute(CounterProviderPage(), '/provider');
      // return MaterialPageRoute(
      //     settings: RouteSettings(name: '/provider'),
      //     builder: (_) => CounterProviderPage());

      default:
        return _fadeRoute(CounterPage(), '/404');
      // return MaterialPageRoute(
      //     settings: RouteSettings(name: '/404'), builder: (_) => Page404());
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        transitionDuration: Duration(milliseconds: 200),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) => FadeTransition(
              opacity: animation,
              child: child,
            ));
  }
}
