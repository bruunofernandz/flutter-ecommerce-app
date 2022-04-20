import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = '/search';
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).kBackgroundColor,
      body: Container(color: Colors.yellow),
    );
  }
}
