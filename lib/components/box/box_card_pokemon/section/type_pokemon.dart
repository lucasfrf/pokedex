import 'package:flutter/material.dart';
import 'package:pokedex/components/box/box_list_type/box_list_type.dart';

Column typePokemon(List listPokemonType) {
  return Column(
    children: [
      SizedBox(
        width: 70,
        height: 80,
        child: BoxListType(
          listPokemonType: listPokemonType,
          sDirection: Axis.vertical,
          height: 30,
          fontSize: 12.0,
        ),
      ),
    ],
  );
}
