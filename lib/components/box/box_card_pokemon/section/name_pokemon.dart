import 'package:flutter/material.dart';

Container namePokemon(BuildContext context, String name) {
  return Container(
    alignment: Alignment.bottomLeft,
    child: Text(name, style: Theme.of(context).textTheme.bodyLarge),
  );
}
