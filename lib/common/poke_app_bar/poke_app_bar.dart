import 'package:flutter/material.dart';

AppBar pokeAppBar() {
  return AppBar(
    title: Center(child: Image.asset('images/Logo-03.png')),
    actions: const [
      CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image(image: AssetImage('images/avatar.png'), fit: BoxFit.fill),
      ),
    ],
  );
}
