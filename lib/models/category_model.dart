import 'package:flutter/material.dart';
import 'package:flutter_fitness_ui/resources/app_color.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: "Salad",
        iconPath: "assets/images/salad.png",
        boxColor: AppColor.secondaryColor,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Cake",
        iconPath: "assets/images/cake.png",
        boxColor: AppColor.secondaryColor,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Pie",
        iconPath: "assets/images/pie.png",
        boxColor: AppColor.secondaryColor,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Smoothies",
        iconPath: "assets/images/smoothies.png",
        boxColor: AppColor.secondaryColor,
      ),
    );

    return categories;
  }
}
