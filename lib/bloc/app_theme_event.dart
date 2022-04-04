part of 'app_theme_bloc.dart';

abstract class AppThemeEvent extends Equatable {
  const AppThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeTheme extends AppThemeEvent {
  final bool isDark;
  const ChangeTheme({required this.isDark});
}

class GetTheme extends AppThemeEvent {}
