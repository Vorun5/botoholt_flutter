import 'package:flutter/material.dart';

enum Period {
  month,
  week,
  alltime,
}

extension PeriodExtension on Period {
  Color color() {
    switch (this) {
      case Period.alltime:
        return Colors.purpleAccent;

      case Period.week:
        return  Color.fromARGB(255, 98, 207, 67);

      case Period.month:
        return Color.fromARGB(255, 179, 179, 17);
    }
  }
}
