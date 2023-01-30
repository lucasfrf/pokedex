import 'package:flutter/material.dart';
import 'package:pokedex/screens/initial_screen/sections/position_body.dart';
import 'package:pokedex/screens/initial_screen/sections/position_button.dart';
import 'package:pokedex/screens/initial_screen/sections/position_header.dart';
import 'package:pokedex/screens/initial_screen/sections/position_text.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          positionHeader(),
          positionBody(),
          positionText(),
          positionButton(context),
        ],
      ),
    );
  }
}
