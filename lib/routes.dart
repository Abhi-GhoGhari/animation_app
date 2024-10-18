import 'package:animation_app/presentation/view/page/details_page/details_page.dart';
import 'package:animation_app/presentation/view/page/home_page/home_page.dart';
import 'package:animation_app/presentation/view/page/intro_page/intro_page.dart';
import 'package:flutter/widgets.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
  String intropage = '/';
  String homepage = 'home_page';
  String detailspage = 'details_page';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const IntroPage(),
    'home_page': (context) => const HomePage(),
    'details_page': (context) => const DetailsPage(),
  };
}
