import 'package:flutter/material.dart';
import 'package:pokedex/components/button_search/section/poke_button_search.dart';
import 'package:pokedex/components/button_search/section/poke_field_text.dart';

class ButtonSearch extends StatelessWidget {
  const ButtonSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19.0),
          child: SizedBox(
            width: 162,
            height: 31,
            child: Row(
              children: [
                pokeFieldText(),
                pokeButtonSearch(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
