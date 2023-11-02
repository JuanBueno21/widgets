import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "Buttons_Screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screens"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 15,
        children: [
          ElevatedButton(onPressed: (){}, child: const Text("Elevated")),
          ElevatedButton(onPressed: (){}, child: const Text("Elevated Disable")),

          ElevatedButton.icon(
            onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined),
            label: const Text("Elevated Icon")),
            FilledButton(onPressed: (){}, child: const Text("Filled")),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.computer),
            label: const Text("Computer"),
            ),

            OutlinedButton(onPressed: (){}, child: const Text("outLine")),
            OutlinedButton.icon(onPressed: (){},
            label: const Text("OutLine Icon"),
            icon: const Icon(Icons.terminal),
            ),

            TextButton(onPressed: (){}, child: const Text("Text")),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.telegram),
            label: const Text("Telegram"),
            ),

            // TODO: custom button

            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration,)),
            IconButton(
              onPressed: (){}, icon: const Icon(Icons.app_registration),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white)
            ),
            ),

        ],
      ),
    );
  }
}