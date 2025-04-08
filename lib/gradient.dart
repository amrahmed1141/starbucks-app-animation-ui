import 'package:flutter/material.dart';

class AppGradients {
  // Gradient: Black to White
  static const LinearGradient blackToRed = LinearGradient(
    colors: [
      Color(0xFFFF0000),
      Color(0xFFFF007F),
      Color(0xFF000000),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
