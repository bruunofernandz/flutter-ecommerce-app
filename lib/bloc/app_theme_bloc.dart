import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc(AppThemeState initialState) : super(AppThemeDefault()) {
    on<GetTheme>(_getCurrentTheme);
    on<ChangeTheme>(_changedTheme);
  }

  Future<void> _getCurrentTheme(GetTheme event, Emitter<AppThemeState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final currentTheme = prefs.getBool("isDark");

    if (currentTheme == null) {
      emit(AppThemeDefault());
    } else if (currentTheme) {
      emit(DarkMode());
    } else {
      emit(LightMode());
    }
  }

  void _changedTheme(ChangeTheme event, Emitter<AppThemeState> emit) {
    if (event.isDark) {
      emit(DarkMode());
    } else {
      emit(LightMode());
    }
  }
}
