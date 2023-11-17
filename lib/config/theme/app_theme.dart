import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue, 
  Colors.teal,
  Colors.yellow,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.orange,
  Colors.grey,
  Colors.black,
  Colors.green
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, "El color seleccionado debe ser mayor que 0"),
      assert(selectedColor < colorList.length -1, 
      "El color seleccionado debe ser menor o igual que ${colorList.length}"
    );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList [selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false)
  );

}