import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList) ;

// estado => isDarkmodeProvider = boolean
final isDarkModeProvider = StateProvider((ref) => false) ;

// un simple int
final selectedColorProvider = StateProvider((ref) => 0);