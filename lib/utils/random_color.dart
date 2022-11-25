import 'dart:math';
import 'package:flutter/material.dart';

final _random = Random();

const _colors = [
  Color.fromARGB(255, 202, 68, 225),
  Color.fromARGB(255, 220, 73, 80),
  Color.fromARGB(255, 73, 195, 59),
  Color.fromARGB(255, 79, 90, 244),
  Color.fromARGB(252, 235, 60, 60),
  Color.fromARGB(251, 54, 153, 224),
];

Color randomColor() => _colors[_random.nextInt(_colors.length)];
