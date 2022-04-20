import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/splash.dart';
import 'package:flutter_ecommerce/pages/search_page.dart';
import 'package:flutter_ecommerce/pages/settings.dart';
import 'package:flutter_ecommerce/pages/shop.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  SettingsPage.routeName: (context) => const SettingsPage(),
  SearchPage.routeName: (context) => const SearchPage(),
  Shop.routeName: (context) => const Shop(),
};
