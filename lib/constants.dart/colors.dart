import 'package:flutter/material.dart';

class AppColors {
  static const black = Color(0xFF0A0A22);
  static const gray = Color(0xFF8B95A2);
  static const blue = Color(0xFF2C2D35);
  static const white = Color(0xFFFFFFFF);
  static const backgound1 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[Color(0xffBCC8D6), Color(0xffF2F4F7)],
  );
  static const backgound2 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[Color(0xff2C2D35), Color(0xff484B5B)],
  );
  static const arcCercle = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[Color(0xffFF4F80), Color(0xffC23ACC)],
  );
}
