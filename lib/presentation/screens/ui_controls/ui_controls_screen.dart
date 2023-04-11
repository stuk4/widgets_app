import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
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

enum _Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  _Transportation selectedTransportation = _Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Enable developer mode'),
          value: isDeveloper,
          onChanged: (value) {
            isDeveloper = !isDeveloper;
            setState(() {});
          },
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Travel by car'),
              value: _Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = _Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Travel by plane'),
              value: _Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = _Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Travel by boat'),
              value: _Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = _Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Travel by submarine'),
              value: _Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = _Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
            value: wantsBreakFast,
            onChanged: (value) =>
                setState(() => wantsBreakFast = !wantsBreakFast),
            title: const Text('Breakfast?'),
            subtitle: const Text('I want breakfast')),
        CheckboxListTile(
            value: wantsLunch,
            onChanged: (value) => setState(() => wantsLunch = !wantsLunch),
            title: const Text('Lunch?'),
            subtitle: const Text('I want lucnh')),
        CheckboxListTile(
            value: wantsDinner,
            onChanged: (value) => setState(() => wantsDinner = !wantsDinner),
            title: const Text('Dinner?'),
            subtitle: const Text('I want dinner')),
      ],
    );
  }
}
