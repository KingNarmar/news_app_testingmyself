import 'package:flutter/material.dart';
import 'package:news_app_testingmyself/widgets/category_tile_list.dart';

import '../widgets/news_tile_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: CategoryTileList(),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          NewsTileList(),
        ]),
      ),
    );
  }
}
