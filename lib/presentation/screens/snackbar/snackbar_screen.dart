import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = "snackbar_screen";
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(label: "OK", onPressed: () {}),
      duration: const Duration(seconds: 2),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog(BuildContext context) {

// mensaje de alerta
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Estas seguro?"),
        content: const Text("Do non exercitation incididunt labore ex deserunt adipisicing occaecat ex."),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: const Text("Cancelar")),
          FilledButton(onPressed: ()=>context.pop(), child: const Text("Aceptar")),
      ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y dialogos"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,
              children: [
                const Text("Reprehenderit ut do eiusmod Lorem cillum eiusmod laboris tempor consequat sunt eiusmod occaecat qui.")
              ]);
            },
            child: const Text("Licencias usadas")
            ),

            FilledButton.tonal(onPressed: ()=> openDialog(context),
              child: const Text("Mostrar dialogo")
            )

          ],
        )
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbars"),
        icon: const Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context),
          ),
        );
      }
    }