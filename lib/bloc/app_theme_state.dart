part of 'app_theme_bloc.dart';

enum AppThemeEnum { light, dark, system }

abstract class AppThemeState extends Equatable {
  @override
  List<AppThemeEnum> get props => [];
}

class AppThemeDefault extends AppThemeState {}

class LightMode extends AppThemeState {}

class DarkMode extends AppThemeState {}
