import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Data/repository/pokemon_repository.dart';
import 'package:pokedex/screens/home_screen/container/home_container.dart';
import 'package:pokedex/screens/initial_screen/initial_screen.dart';
import 'package:pokedex/themes/my_theme.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const InitialScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "home":
            return MaterialPageRoute(builder: (context) {
              return HomeContainer(repository: PokemonRepository(dio: Dio()));
            });
          default:
            return null;
        }
      },
    );
  }
}
