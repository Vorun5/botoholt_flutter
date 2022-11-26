import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/widgets/hoverable.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'link.g.dart';

@swidget
Widget _link({
  required String text,
  required String link,
}) =>
    Hoverable(
      child: (isHovered) => GestureDetector(
        onTap: () async {
          final url = Uri.parse(link);
          if (!await launchUrl(url)) {
            debugPrint('${link} is not valid link');
          }
        },
        child: Text(
          text,
          style: TextStyle(
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
            fontSize: FontSize.normal,
            color: Colors.blue,
          ),
        ),
      ),
    );
