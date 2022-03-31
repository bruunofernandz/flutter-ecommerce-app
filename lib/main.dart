import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/bloc/app_theme_bloc.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBloc>(
        create: (_) => AppThemeBloc(),
        child: BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'Flutter E-commerce App',
              debugShowCheckedModeBanner: false,
              theme: state.theme,
              darkTheme: themeDark,
              home: const HomePage(),
            );
          },
        ));
  }
}
