import 'package:botoholt_flutter/utils/periods.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedPeriodTopDJsProvider =
    StateProvider<Period>((_) => Period.week);
