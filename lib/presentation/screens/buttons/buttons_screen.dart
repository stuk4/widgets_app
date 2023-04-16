import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botons Screen'),
      ),
      body: _ButtonsView(),
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
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('ElevatedButton'),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('ElevatedButton Disabled'),
              ),
              ElevatedButton.icon(
                label: const Text('EleveatedIcon'),
                icon: const Icon(Icons.access_alarm_rounded),
                onPressed: () {},
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('FieldButton'),
              ),
              FilledButton.icon(
                onPressed: () {},
                label: const Text('FieldButton Icon'),
                icon: const Icon(Icons.ac_unit_outlined),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('OutlinedButton'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text('OutlinedButton Icon'),
                icon: const Icon(Icons.access_alarm_rounded),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('TextButton'),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text('TextButton Icon'),
                icon: const Icon(Icons.access_alarm_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              const _CustomButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Custom Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
