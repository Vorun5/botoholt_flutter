import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/random_color.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'song_owner.g.dart';

@swidget
Widget _songOwner(String owner) =>
    Expanded(
      child: Text(
        owner,
        overflow: TextOverflow.fade,
        maxLines: 1,
        softWrap: false,
        style: TextStyle(
          fontSize: FontSize.normal,
          color: randomColor(),
        ),
      ),
    );
