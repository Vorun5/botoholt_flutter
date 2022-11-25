import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'tiles.g.dart';

const _letterSpacing = 3.0;

@hcwidget
Widget _tiles(
  WidgetRef ref, {
  required String title,
  required IconData icon,
  required List<Widget> children,
}) =>
    ExpansionTile(
      expandedAlignment: Alignment.centerRight,
      leading: Icon(
        icon,
      ),
      title: Text(
        title.toUpperCase(),
        style: const TextStyle(
          letterSpacing: _letterSpacing,
        ),
      ),
      children: children,
    );

@swidget
Widget _tile({
  String? title,
  IconData? icon,
  Widget? child,
  void Function()? onTap,
  TextAlign? textAlign,
}) =>
    ListTile(
      onTap: onTap,
      leading: icon != null ? Icon(icon) : null,
      title: Row(
        children: [
          if (child != null) child,
          if (child != null && title != null) Gaps.small,
          if (title != null)
            Text(
              textAlign: textAlign,
              title.toUpperCase(),
              style: const TextStyle(
                letterSpacing: _letterSpacing,
              ),
            ),
        ],
      ),
    );
