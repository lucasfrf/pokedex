import 'package:flutter/material.dart';

Positioned positionText() {
  return Positioned(
    bottom: 250,
    child: RichText(
      text: const TextSpan(
        text: 'Descubra o mundo\n dos ',
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 47, 62, 119),
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Pokémons',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 104, 109),
            ),
          ),
          TextSpan(
            text: '\nDescubra todas as espécies do Pokémons',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 47, 62, 119),
            ),
          ),
        ],
      ),
    ),
  );
}
