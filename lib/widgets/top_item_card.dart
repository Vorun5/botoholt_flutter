import 'package:botoholt_flutter/data/top_item.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'top_item_card.g.dart';

@swidget
Widget _topItemCard(
  BuildContext context, {
  required int number,
  required TopItem topItem,
}) =>
    Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.onInverseSurface,
      child: Container(
        padding: const EdgeInsets.all(Paddings.normal),
        child: Row(
          children: [
            Text(
              number.toString(),
              style: const TextStyle(
                fontSize: FontSize.normal,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gaps.normal,
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 100),
                child: Text(
                  topItem.name,
                  style: TextStyle(
                    fontSize: FontSize.normal,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Gaps.normal,
            Text(
              topItem.count.toString(),
              style: TextStyle(
                fontSize: FontSize.big - 2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
