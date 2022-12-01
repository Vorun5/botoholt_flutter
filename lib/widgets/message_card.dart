import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/widgets/card_container.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'message_card.g.dart';

@hcwidget
Widget _messageCard(
  BuildContext context,
  WidgetRef ref, {
  bool reverse = false,
  required String imagePath,
  required String message,
}) {
  final mode = ref.watch(displayModeProvider);

  return CardContainer(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            message,
            style: TextStyle(
              fontSize:
                  mode == DisplayMode.mobile ? FontSize.normal : FontSize.big,
                  fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Gaps.normal,
        Image.asset(
          imagePath,
          width: mode == DisplayMode.mobile ? 90 : 112,
          height: mode == DisplayMode.mobile ? 90 : 112,
        ),
      ],
    ),
  );
}
