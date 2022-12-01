import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/widgets/message_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'queue_is_empty.g.dart';

@swidget
Widget _queueIsEmpty(BuildContext context) => MessageCard(
      imagePath: 'assets/dance/OkaygeBusiness.png',
      message: Translations.of(context).streamer.queue.queueIsEmpty,
    );
