import 'package:flutter/material.dart';
import 'package:pokedex/Data/consts/type_pokemon.dart';
import 'package:pokedex/components/box/box_list_type/box_list_type.dart';

class TypePokemon extends StatelessWidget {
  const TypePokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 19.0, left: 30.0),
          child: Text("Tipo", style: Theme.of(context).textTheme.bodyLarge),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30.0),
          height: 45,
          width: MediaQuery.of(context).size.width,
          child: BoxListType(
            width: 80,
            listPokemonType: listPokemonType,
            onlyOnePokemon: false,
          ),
        ),
      ],
    );
  }
}
