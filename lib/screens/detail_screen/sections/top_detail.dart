import 'package:flutter/material.dart';
import 'package:pokedex/screens/detail_screen/sections/button_detail.dart';
import 'package:pokedex/screens/detail_screen/sections/name_detail.dart';

Row topDetail(BuildContext context, String name, String id, List type) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: const EdgeInsets.only(left: 20.0),
        child: nameDetail(context, name, id),
      ),
      Container(
          padding: const EdgeInsets.only(right: 20.0),
          child: buttonDetail(type)),
    ],
  );
}
