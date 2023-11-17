import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// estado => isDarkmodeProvider = boolean
final isDarkModeProvider = StateProvider((ref) => false) ;

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList) ;