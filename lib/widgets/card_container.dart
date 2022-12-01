import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'card_container.g.dart';

@hcwidget
Widget _cardContainer(
  BuildContext context,
  WidgetRef ref, {
  required Widget child,
}) {
  final mode = ref.watch(displayModeProvider);

  return Card(
    elevation: 0,
    color: Theme.of(context).colorScheme.onInverseSurface,
    child: Container(
      padding: EdgeInsets.all(
          mode == DisplayMode.mobile ? Paddings.small : Paddings.normal),
      child: child,
    ),
  );
}
