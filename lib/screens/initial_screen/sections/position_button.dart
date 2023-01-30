import 'package:flutter/material.dart';

Positioned positionButton(BuildContext context) {
  return Positioned(
    bottom: 150,
    child: SizedBox(
      height: 43,
      width: 226,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, "home");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            const Text('Começar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                )),
            const Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    ),
  );
}
