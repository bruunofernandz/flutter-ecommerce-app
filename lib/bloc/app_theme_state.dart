part of 'app_theme_bloc.dart';

class AppThemeState extends Equatable {
  final ThemeData theme;
  const AppThemeState({required this.theme});

  @override
  List<Object> get props => [theme];
}
