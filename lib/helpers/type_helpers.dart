import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_type.dart';
import 'package:pokedex/Data/consts/type_pokemon.dart';

PokemonType getType(String typeName) {
  Map<String, dynamic> itemPokemonType = {};
  for (var i = 0; i < listPokemonType.length; i++) {
    if (listPokemonType[i]['id'].toString() == typeName) {
      itemPokemonType = {
        "id": listPokemonType[i]['id'] as String,
        "name": listPokemonType[i]['name'] as String,
        "color": listPokemonType[i]['color'] as Color,
      };
    }
  }
  if (itemPokemonType.isEmpty) {
    itemPokemonType = {
      "id": "",
      "name": "",
      "color": Colors.redAccent,
    };
  }
  PokemonType pokemonType = PokemonType(
    id: itemPokemonType['id'],
    name: itemPokemonType['name'],
    color: itemPokemonType['color'],
  );

  return pokemonType;
}
