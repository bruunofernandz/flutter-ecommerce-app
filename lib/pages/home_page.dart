import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/pages/search_page.dart';
import 'package:flutter_ecommerce/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void setIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).kBackgroundColor.withOpacity(0.9),
        showSelectedLabels: false,
        elevation: 16,
        currentIndex: 0,
        onTap: setIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Theme.of(context).kPrimaryColor : const Color(0xFF666666),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _selectedIndex == 1 ? Theme.of(context).kPrimaryColor : const Color(0xFF666666),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,
                  color: _selectedIndex == 2 ? Theme.of(context).kPrimaryColor : const Color(0xFF666666)),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                  color: _selectedIndex == 3 ? Theme.of(context).kPrimaryColor : const Color(0xFF666666)),
              label: ""),
        ],
      ),
      body: screen(_selectedIndex),
    );
  }
}

screen(int index) {
  if (index == 0) {
    return const Shop();
  }

  if (index == 1) {
    return const SearchPage();
  }
}
