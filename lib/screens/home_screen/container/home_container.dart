import 'package:flutter/material.dart';
import 'package:pokedex/Data/interface/ipokemon.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/error_screen/error_screen.dart';
import 'package:pokedex/screens/home_screen/home_screen.dart';
import 'package:pokedex/screens/loading_screen/loading_screen.dart';

class HomeContainer extends StatelessWidget {
  final IPokemon repository;
  const HomeContainer({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: repository.getAll(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const LoadingScreen();
          case ConnectionState.waiting:
            return const LoadingScreen();
          case ConnectionState.active:
            return const LoadingScreen();
          case ConnectionState.done:
            if (snapshot.hasData && snapshot.data != null) {
              if (snapshot.data != null) {
                return HomeScreen(listPokemon: snapshot.data!);
              }
              return const ErrorScreen(
                errorMessage: 'Não foi possível encontrar pokemóns!',
              );
            }
            return const ErrorScreen(
              errorMessage: 'Erro ao carregar pokemóns!',
            );
        }
      },
    );
  }
}
