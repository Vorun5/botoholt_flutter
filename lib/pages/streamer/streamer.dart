import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/widgets/scroll_to_top.dart';
import 'package:botoholt_flutter/widgets/streamer_avatar.dart';
import 'package:botoholt_flutter/widgets/tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer.g.dart';

const _sliverAppBarHeight = 300.0;
const _avatarIndicatorRadius = 4.5;

@hcwidget
Widget _streamer(
  BuildContext context, {
  required StreamerDto streamer,
}) {
  final showBackToTopButton = useState(false);
  final scrollController = useScrollController();
  scrollController.addListener(() {
    showBackToTopButton.value = scrollController.offset >= scrollToTopOffset;
  });
  Future<void> scrollToTop() async {
    await scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  final trl = Translations.of(context);

  return SafeArea(
    child: Scaffold(
      floatingActionButton: showBackToTopButton.value
          ? ScrollToTop(onPressed: scrollToTop)
          : null,
      drawer: Drawer(
        child: Column(
          children: const [
              DrawerHeader(child: Icon(Icons.favorite)),
             Tiles(
              title: 'asd',
              icon: Icons.translate,
              children: [
                Tile(title: 'Abc'),
                Tile(title: 'CBA'),
                Tile(title: 'BAC'),
              ],
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          // appbar
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.blue,
            expandedHeight: _sliverAppBarHeight,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.fromLTRB(55, 0, 40, 7),
              title: StreamerAvatar(streamer),
            ),
          ),

          // body
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: _sliverAppBarHeight,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: _sliverAppBarHeight,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: _sliverAppBarHeight,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: _sliverAppBarHeight,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: _sliverAppBarHeight,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: _sliverAppBarHeight,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
