import 'package:animation_app/presentation/view/page/home_page/home_page.dart';
import 'package:flutter/widgets.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
  String homepage = '/';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const HomePage(),
  };
}
