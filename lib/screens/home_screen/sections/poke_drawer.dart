import 'package:flutter/material.dart';

Drawer pokeDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(child: Text('Pokedéx')),
        ListTile(
          title: const Text('Início'),
          onTap: () {
            Navigator.pushReplacementNamed(context, "/");
          },
        ),
      ],
    ),
  );
}
