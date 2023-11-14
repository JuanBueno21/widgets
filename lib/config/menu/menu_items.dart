
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
    title: "Botones", 
    subTitle: "Varios Botones", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined),

  MenuItems(
    title: "Tarjetas", 
    subTitle: "contenedor", 
    link: "/cards", 
    icon: Icons.credit_card),


    MenuItems(
    title: "Indicador de progreso", 
    subTitle: "generales & controlados", 
    link: "/progress", 
    icon: Icons.refresh_rounded),

    MenuItems(
    title: "Snackbars y dialogos", 
    subTitle: "indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.phone),

    // contenedor animado
    MenuItems(
      title: "Animated container", 
      subTitle: "Stateful widget animated", 
      link: "/animated", 
      icon: Icons.check_box_outline_blank_outlined),

    MenuItems(
    title: "UI Controls + Tiles", 
    subTitle: "una serie de controles de Flutter", 
    link: "/ui-controls",
    icon: Icons.car_rental_outlined),

];
