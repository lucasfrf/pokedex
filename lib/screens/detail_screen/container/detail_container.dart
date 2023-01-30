import 'package:flutter/material.dart';
import 'package:pokedex/Data/interface/istats.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/models/stats.dart';
import 'package:pokedex/screens/detail_screen/detail_screen.dart';
import 'package:pokedex/screens/error_screen/error_screen.dart';
import 'package:pokedex/screens/loading_screen/loading_screen.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    super.key,
    required this.repository,
    required this.pokemon,
  });
  final IStats repository;
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Stats>>(
        future: repository.getStats(pokemon.id.toString()),
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
                  return DetailScreen(
                    pokemon: pokemon,
                    stats: snapshot.data!,
                  );
                }
                return const ErrorScreen(
                    errorMessage: 'Não foi possível acessar o pokemón!');
              }
              return const ErrorScreen(
                  errorMessage: 'Erro ao carregar detalhes do pokemón!');
          }
        });
  }
}
