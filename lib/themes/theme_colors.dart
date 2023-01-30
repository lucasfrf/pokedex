import 'package:flutter/material.dart';

class ThemeColors {
  static const MaterialColor primaryColor =
      MaterialColor(0xFF2F3E77, <int, Color>{
    50: Color.fromRGBO(145, 153, 153, .1),
    100: Color.fromRGBO(145, 153, 153, .2),
    200: Color.fromRGBO(145, 153, 153, .3),
    300: Color.fromRGBO(145, 153, 153, .4),
    400: Color.fromRGBO(145, 153, 153, .5),
    500: Color.fromRGBO(145, 153, 153, .6),
    600: Color.fromRGBO(145, 153, 153, .7),
    700: Color.fromRGBO(145, 153, 153, .8),
    800: Color.fromRGBO(145, 153, 153, .9),
    900: Color.fromARGB(255, 152, 160, 160),
  });
  static const Color appBarColor = Color.fromARGB(255, 255, 255, 255);
  static const Color textColor = Color.fromRGBO(47, 62, 119, 1);
  static const Color boxColor = Color.fromARGB(255, 241, 241, 241);
  static const Color buttonColor = Color.fromARGB(255, 234, 104, 109);
  static const Color textButtonColor = Colors.white;
  static const Color iconeColor = Colors.white;
  static const Color backgroundColor = Color.fromARGB(255, 1, 248, 1);
}
