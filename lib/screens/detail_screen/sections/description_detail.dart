import 'package:flutter/material.dart';

Column descriptionDetail(BuildContext context, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          padding: const EdgeInsets.only(left: 20.0),
          child:
              Text('Descrição', style: Theme.of(context).textTheme.bodyLarge)),
      Container(
        padding: const EdgeInsets.only(top: 5.0, left: 20.0),
        height: 110,
        width: MediaQuery.of(context).size.width - 10,
        child: ListView(
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(top: 10.0),
          children: [
            Text('"$description"',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    ],
  );
}
