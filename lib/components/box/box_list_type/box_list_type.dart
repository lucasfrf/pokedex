import 'package:flutter/material.dart';
import 'package:pokedex/components/box/box_type/box_type.dart';
import 'package:pokedex/helpers/type_helpers.dart';
import 'package:pokedex/models/pokemon_type.dart';

class BoxListType extends StatelessWidget {
  const BoxListType({
    super.key,
    required this.listPokemonType,
    this.isReverse = false,
    this.sDirection = Axis.horizontal,
    this.height = 20.0,
    this.width = 64.0,
    this.fontSize = 14.0,
    this.onlyOnePokemon = true,
  });
  final List listPokemonType;
  final bool isReverse;
  final Axis sDirection;
  final double height;
  final double width;
  final double fontSize;
  final bool onlyOnePokemon;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: isReverse,
      scrollDirection: sDirection,
      itemCount: listPokemonType.length,
      itemBuilder: (context, index) {
        Color colorType;
        String nameType;
        if (onlyOnePokemon) {
          PokemonType pokeType = getType(listPokemonType[index].toString());
          colorType = pokeType.color;
          nameType = pokeType.name;
        } else {
          colorType = listPokemonType[index]['color'] as Color;
          nameType = listPokemonType[index]['name'].toString();
        }

        return Padding(
          padding: const EdgeInsets.only(right: 10.0, top: 10.0),
          child: BoxType(
            context: context,
            height: height,
            width: width,
            color: colorType,
            textType: nameType,
            fontSize: fontSize,
          ),
        );
      },
    );
  }
}
