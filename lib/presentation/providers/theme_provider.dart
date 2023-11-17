import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// estado => isDarkmodeProvider = boolean
final isDarkModeProvider = StateProvider((ref) => false);

// un simple int
final selectedColorProvider = StateProvider((ref) => 0);




// un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider <ThemeNotifier, AppTheme> (
  (ref) => ThemeNotifier(),
  );

// controller notifier
class ThemeNotifier extends StateNotifier <AppTheme> {

// STATE = estado = AppTheme
  ThemeNotifier() : super(AppTheme() );

  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex( int colorIndex ){
    state = state.copyWith(selectedColor: colorIndex);
  }
}