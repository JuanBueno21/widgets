import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = "ui_control_screen";

  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ui controls"),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreackfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text("Controles adicionales"),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioListTile(
                title: const Text("By Car"),
                subtitle: const Text("viajar por carro"),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text("By Boat"),
                subtitle: const Text("viajar por bote"),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text("By Plane"),
                subtitle: const Text("viajar por avión"),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text("By Submarine"),
                subtitle: const Text("viajar por submarino"),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    })),
          ],
        ),

        CheckboxListTile(
          title: const Text("Quiere desayuno?"),
          value: wantsBreackfast, 
          onChanged: ((value) => setState(() {
            wantsBreackfast = !wantsBreackfast ;
        })),        
     ),

        CheckboxListTile(
          title: const Text("Quieres almorzar?"),
          value: wantsLunch,
          onChanged: (value) => setState(() {
          wantsLunch = !wantsLunch  ;
          }
        ,)
      ),

        CheckboxListTile(
          title: const Text("Quieres almorzar?"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
          wantsDinner = !wantsDinner ;
          }
        ,)
      ),
    ],
    );
  }
}