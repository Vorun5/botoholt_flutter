import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'streamer_error.g.dart';

@swidget
Widget _streamerError(BuildContext context) {
  final i18n = Translations.of(context);
  
  return  Padding(
      padding: EdgeInsets.all(Paddings.big),
      child: Center(
        child: Text(
          i18n.error,
          style: const TextStyle(
            fontSize: FontSize.big,
          ),
        ),
      ),
    );
}
