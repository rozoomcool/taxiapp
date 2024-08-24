import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxiapp/domain/state/theme_state/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(DarkThemeState());
}
