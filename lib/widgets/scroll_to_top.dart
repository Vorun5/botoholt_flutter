
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'scroll_to_top.g.dart';

@hcwidget
Widget _scrollToTop(WidgetRef ref, {required void Function() onPressed}) =>
   FloatingActionButton(
    elevation: 0,
    hoverElevation: 0,
    focusElevation: 0,
    backgroundColor: Colors.blue,
    onPressed: onPressed,
    child: const Icon(Icons.arrow_upward),
  );


const scrollToTopOffset = 500;
