import 'package:flutter/material.dart';
import 'package:news_app_testingmyself/models/category_model.dart';

import 'category_tile.dart';

class CategoryTileList extends StatelessWidget {
  const CategoryTileList({
    super.key,
  });
  final List<CategoryModel> categoris = const [
    CategoryModel(name: "Business", pic: "assets/business.avif"),
    CategoryModel(name: "Entertanment", pic: "assets/entertaiment.avif"),
    CategoryModel(name: "General", pic: "assets/general.avif"),
    CategoryModel(name: "Health", pic: "assets/health.avif"),
    CategoryModel(name: "Science", pic: "assets/science.avif"),
    CategoryModel(name: "Sports", pic: "assets/sports.avif"),
    CategoryModel(name: "Technology", pic: "assets/technology.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: categoris.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryTile(categoryModel: categoris[index]);
        },
      ),
    );
  }
}
