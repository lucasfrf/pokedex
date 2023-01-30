import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Data/repository/stats_repository.dart';
import 'package:pokedex/components/box/box_card_pokemon/box_card_pokemon.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/detail_screen/container/detail_container.dart';

class Popular extends StatelessWidget {
  const Popular({super.key, required this.listPokemon});
  final List<Pokemon> listPokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mais procurados",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        _GridPopular(listPokemon),
      ],
    );
  }
}

class _GridPopular extends StatelessWidget {
  const _GridPopular(this.listPokemon);
  final List<Pokemon> listPokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        dragStartBehavior: DragStartBehavior.start,
        scrollDirection: Axis.vertical,
        itemCount: listPokemon.length,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailContainer(
                  pokemon: listPokemon[index],
                  repository: StatsRepository(dio: Dio()),
                ),
              ),
            ),
            child: BoxCardPokemon(
              pokemonId: listPokemon[index].num,
              pokemonName: listPokemon[index].name,
              pokemonImage: listPokemon[index].image,
              listPokemonType: listPokemon[index].type,
            ),
          );
        },
      ),
    );
  }
}
