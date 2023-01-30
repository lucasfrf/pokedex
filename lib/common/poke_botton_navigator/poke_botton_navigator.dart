import 'package:flutter/material.dart';

BottomNavigationBar pokeBottonNavigator(Color selectedColor) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline),
        label: 'Favoritos',
        backgroundColor: Color.fromARGB(255, 162, 169, 176),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined),
        label: 'Minha conta',
        backgroundColor: Color.fromARGB(255, 162, 169, 176),
      ),
    ],
    selectedItemColor: selectedColor,
  );
}
