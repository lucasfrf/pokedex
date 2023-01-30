import 'package:flutter/material.dart';

Container headerDetail(BuildContext context, String image) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: const Color.fromARGB(255, 241, 241, 241),
    ),
    height: MediaQuery.of(context).size.height / 2,
    width: MediaQuery.of(context).size.width,
    child: Image(
      image: NetworkImage(image),
    ),
  );
}
