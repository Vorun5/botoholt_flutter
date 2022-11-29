import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/constants.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/song_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'songs.g.dart';

@hcwidget
Widget _songs(
  BuildContext context, {
  required List<Song> songs,
}) {
  final i18n = Translations.of(context);
  final search = useState('');
  final filteredSongs = songs.where((song) =>
      song.mediaName.toLowerCase().contains(search.value) ||
      song.requestedBy.toLowerCase().contains(search.value));

  final controller = useTextEditingController();

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, right: 3, bottom: Paddings.tiny),
        child: TextField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(fontSize: FontSize.normal),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: Paddings.small),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
              borderSide: BorderSide.none,
            ),
            hintText: i18n.form.search,
            hintStyle: const TextStyle(fontSize: FontSize.normal),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: Paddings.tiny),
              child: Icon(Icons.search),
            ),
            suffixIcon: controller.text.isEmpty
                ? null
                : Padding(
                    padding: const EdgeInsets.only(right: Paddings.tiny),
                    child: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        controller.clear();
                        search.value = "";
                      },
                    ),
                  ),
          ),
          onChanged: (value) => search.value = value.toLowerCase(),
        ),
      ),
      ...filteredSongs
          .map(
            (song) => SongCard(
              song: song,
            ),
          )
          .toList(),
    ],
  );
}
