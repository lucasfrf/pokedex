import 'package:flutter/material.dart';

Column nameDetail(BuildContext context, String name, String id) {
  return Column(
    children: [
      Text(name, style: Theme.of(context).textTheme.bodyLarge),
      Text('Cod: #$id'),
    ],
  );
}
