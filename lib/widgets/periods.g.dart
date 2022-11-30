// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periods.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class Periods extends StatelessWidget {
  const Periods({
    Key? key,
    required this.selectedPeriod,
    required this.periods,
    required this.onPressed,
  }) : super(key: key);

  final Period selectedPeriod;

  final List<Period> periods;

  final void Function(Period) onPressed;

  @override
  Widget build(BuildContext _context) => _periods(
        _context,
        selectedPeriod: selectedPeriod,
        periods: periods,
        onPressed: onPressed,
      );
}
