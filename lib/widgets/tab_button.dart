import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'tab_button.g.dart';

@swidget
Widget _tabButton(
  BuildContext context, {
  required String text,
  required Color color,
  required void Function()? onPressed,
  required bool isFocus,
}) =>
    OutlinedButton(
      onPressed: isFocus ? null : onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: color,
        alignment: Alignment.center,
        side: BorderSide(
          color: isFocus ? Theme.of(context).colorScheme.onBackground : color,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: Paddings.small - 5,
          bottom: Paddings.small - 3,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: FontSize.normal - 1,
          ),
        ),
      ),
    );
