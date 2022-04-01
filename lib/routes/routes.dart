import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/routes/pages.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomePage.routeName: (context) => const HomePage(),
  SettingsPage.routeName: (context) => const SettingsPage(),
  Shop.routeName: (context) => const Shop()
};
