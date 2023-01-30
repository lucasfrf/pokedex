import 'package:flutter/material.dart';
import 'package:pokedex/components/box/box_card_pokemon/section/image_pokemon.dart';
import 'package:pokedex/components/box/box_card_pokemon/section/name_pokemon.dart';
import 'package:pokedex/components/box/box_card_pokemon/section/number_pokemon.dart';
import 'package:pokedex/components/box/box_card_pokemon/section/type_pokemon.dart';
import 'package:pokedex/components/box/box_pokemon/box_pokemon.dart';

class BoxCardPokemon extends StatelessWidget {
  const BoxCardPokemon({
    super.key,
    required this.pokemonName,
    required this.pokemonImage,
    required this.pokemonId,
    required this.listPokemonType,
  });
  final String pokemonName;
  final String pokemonImage;
  final String pokemonId;
  final List listPokemonType;

  @override
  Widget build(context) {
    return BoxPokemon(
      boxContent: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          namePokemon(context, pokemonName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              typePokemon(listPokemonType),
              imagePokemon(pokemonImage),
            ],
          ),
          numberPokemon(pokemonId),
        ],
      ),
    );
  }
}
