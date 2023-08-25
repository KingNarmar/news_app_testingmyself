import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 2,
        (context, index) => const NewsTile(),
      ),
    );
  }
}
