import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/bloc/app_theme_bloc.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/constants/theme.dart';

class SettingsPage extends StatefulWidget {
  static const String routeName = '/settings';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // print(_switchBool);

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(title: "Settings"),
      ),
      body: Container(
        color: Colors.amber,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state) {
            return SwitchListTile(
                title: CustomText(
                  title: "Dark Theme",
                  style: TextStyle(color: Theme.of(context).kTextDark, fontWeight: FontWeight.bold),
                ),
                value: _isSwitched,
                onChanged: (switchState) {
                  setState(() {
                    _isSwitched = switchState;
                  });

                  if (_isSwitched) {
                    BlocProvider.of<AppThemeBloc>(context).add(const ChangeTheme(isDark: false));
                  } else {
                    BlocProvider.of<AppThemeBloc>(context).add(const ChangeTheme(isDark: true));
                  }
                });
          },
        ),
      ),
    );
  }
}
