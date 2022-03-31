import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(AppThemeState(theme: themeLight)) {
    on<AppThemeEvent>((event, emit) {
      mapEventToState(event);
    });
  }

  Stream<AppThemeState> mapEventToState(AppThemeEvent event) async* {
    // ignore: unnecessary_type_check
    if (event is AppThemeEvent) {
      yield AppThemeState(theme: event.theme);
    }
  }
}
