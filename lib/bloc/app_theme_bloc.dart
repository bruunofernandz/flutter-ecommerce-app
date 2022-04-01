import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc(AppThemeState initialState) : super(AppThemeInitial()) {
    on<ChangeTheme>(_changedTheme);
  }

  void _changedTheme(ChangeTheme event, Emitter<AppThemeState> emit) {
    if (state.runtimeType == DarkMode) {
      emit(LightMode());
    } else {
      emit(DarkMode());
    }
  }
}
