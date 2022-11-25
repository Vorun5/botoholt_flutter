import 'package:flutter/material.dart';

class Themes {

  static final ThemeData dark = ThemeData.dark().copyWith(
    useMaterial3: true,
  );


  static final ThemeData light = ThemeData(
    primarySwatch: Colors.purple,
    useMaterial3: true,
  );
}
