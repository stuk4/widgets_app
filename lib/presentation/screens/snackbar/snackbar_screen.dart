import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackBarScreen({super.key});
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
          'Minim laborum cupidatat cillum adipisicing nulla et irure sunt labore incididunt exercitation eiusmod. Irure aute reprehenderit laborum voluptate do ad id. Id cillum ad id minim occaecat. Velit minim adipisicing ipsum exercitation commodo nostrud voluptate dolor qui velit culpa. Aliquip enim nisi eiusmod quis elit est.',
        ),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y diaglos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Nulla in minim consectetur dolore minim ipsum amet officia mollit commodo fugiat nisi ut quis. Consectetur nostrud voluptate est sint. Labore in qui mollit qui amet ullamco esse aliquip officia consequat excepteur cupidatat amet. Consequat sunt enim non Lorem aute deserunt tempor cillum quis ullamco aliqua et in tempor. Lorem veniam velit eiusmod qui eiusmod adipisicing qui laborum aliquip. Excepteur nostrud in velit sint minim velit. Commodo cillum eu quis ea ad quis.')
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostar dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
