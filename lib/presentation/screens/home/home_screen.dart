
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = "Home_Screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey <ScaffoldState> ();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Flutter + Material3"),
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder:(context, index) {
        final menuItem = appMenuItems [index];
        return _CustomListTitle(menuItem: menuItem);
      },
      );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {

    //final color = Theme.of(context).colorScheme;
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){

        // 1ra metodo para navegar entre pantallas
  //       Navigator.of(context).push(
  //         MaterialPageRoute(
  //           builder: (context) => const ButtonsScreen(),
  //   ),
  // );

        // 2da metodo para navegar entre pantallas
  // Navigator.pushNamed(context, menuItem.link);
  // context.pushNamed(CardScreen.name);
        context.push(menuItem.link);
  
      },
    );
  }
}