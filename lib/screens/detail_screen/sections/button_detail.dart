import 'package:flutter/material.dart';
import 'package:pokedex/components/box/box_list_type/box_list_type.dart';

Column buttonDetail(List listPokemonType) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.favorite_outline_sharp,
              color: Color.fromARGB(255, 162, 169, 176),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.share_outlined,
              color: Color.fromARGB(255, 162, 169, 176),
            ),
            onPressed: () {},
          ),
        ],
      ),
      SizedBox(
        width: 170,
        height: 42,
        child: BoxListType(
          listPokemonType: listPokemonType,
          isReverse: true,
        ),
      ),
    ],
  );
}
