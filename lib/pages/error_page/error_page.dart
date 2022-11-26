import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'error_page.g.dart';

@swidget
Widget _errorPage(BuildContext context) {
  final i18n = Translations.of(context);

  return AppScaffold(
    body: Text(
      i18n.pageNotFound404,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: FontSize.big,
      ),
    ),
  );
}
