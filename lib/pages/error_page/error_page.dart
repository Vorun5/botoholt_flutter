import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'error_page.g.dart';

@swidget
Widget _errorPage(BuildContext context) => const AppScaffold(
      body: Text(
        'Страница не найдена\n404',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: FontSize.big,
        ),
      ),
    );
