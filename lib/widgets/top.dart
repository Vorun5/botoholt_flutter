import 'package:botoholt_flutter/data/top_item.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/search_field.dart';
import 'package:botoholt_flutter/widgets/top_item_card.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'top.g.dart';

@hcwidget
Widget _top(
  BuildContext context, {
  required List<TopItem> top,
}) {
  final search = useState('');
  final filteredSongs =
      top.where((song) => song.name.toLowerCase().contains(search.value));

  // return ListView.builder(
  //   itemCount: top.length,
  //   prototypeItem: TopItemCard(
  //     number: 1,
  //     topItem: top.first,
  //   ),
  //   itemBuilder: (BuildContext context, int index) => TopItemCard(
  //     number: index + 1,
  //     topItem: top[index],
  //   ),
  // );

  return Column(
    children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 3, right: 3, bottom: Paddings.tiny),
        child: SearchField(
          search: search.value,
          onChanged: (value) => search.value = value.toLowerCase(),
        ),
      ),
      // ListView.builder(
      //   itemCount: top.length,
      //   itemBuilder: (BuildContext context, int index) => TopItemCard(
      //     number: index + 1,
      //     topItem: top[index],
      //   ),
      // ),
      ...filteredSongs
          .mapIndexed(
            (index, topItem) => TopItemCard(
              number: index + 1,
              topItem: topItem,
            ),
          )
          .toList(),
    ],
  );
}
