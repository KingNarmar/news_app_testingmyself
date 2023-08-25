import 'package:flutter/material.dart';
import 'package:news_app_testingmyself/models/category_model.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 85,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(categoryModel.pic), fit: BoxFit.fill),
        ),
        child: Center(
            child: Text(
          categoryModel.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
