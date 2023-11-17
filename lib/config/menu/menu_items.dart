
import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon})
    ;
}

const appMenuItems = <MenuItems>[

  MenuItems(
    title: "Riverpod Counter", 
    subTitle: "Introduccion a Riverpod", 
    link: "/counter",
    icon: Icons.add),

  MenuItems(
    title: "Botones", 
    subTitle: "Varios Botones", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined),

  MenuItems(
    title: "Tarjetas", 
    subTitle: "Contenedor", 
    link: "/cards", 
    icon: Icons.credit_card),

    MenuItems(
    title: "Indicador de progreso", 
    subTitle: "Generales & controlados", 
    link: "/progress", 
    icon: Icons.refresh_rounded),

    MenuItems(
    title: "Snackbars y dialogos", 
    subTitle: "Indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.phone),

    // contenedor animado
    MenuItems(
      title: "Animated container", 
      subTitle: "Stateful widget animado", 
      link: "/animated", 
      icon: Icons.check_box_outline_blank_outlined),

    MenuItems(
    title: "UI Controls + Tiles", 
    subTitle: "Controles de Flutter", 
    link: "/ui-controls",
    icon: Icons.car_rental_outlined),
    
    MenuItems(
    title: "Introduccion a la App", 
    subTitle: "Tutorial introductorio", 
    link: "/tutorial",
    icon: Icons.app_settings_alt),
    
    MenuItems(
    title: "Scroll infinito y pull", 
    subTitle: "Listas infinitas & Pull para refrescar", 
    link: "/infinite",
    icon: Icons.emoji_emotions_outlined),
    
    MenuItems(
    title: "Cambiar tema", 
    subTitle: "Cambiar tema de la app", 
    link: "/theme-changer",
    icon: Icons.color_lens_outlined),
    
];
