import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/helpers/type_helpers.dart';

void main() {
  test('testing the helper', () {
    expect(getType('Dark').id, 'Dark');
    expect(getType('Fighting').name, 'Luta');
    expect(getType('Ghost').color, const Color.fromARGB(255, 152, 155, 155));
  });
}
