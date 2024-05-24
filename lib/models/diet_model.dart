import 'package:flutter/material.dart';
import 'package:flutter_fitness_ui/resources/app_color.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
    required this.boxColor,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: "Honey Pancake",
        iconPath: "assets/images/honey.png",
        level: 'Easy',
        duration: '30 min',
        calorie: '180 kCal',
        viewIsSelected: true,
        boxColor: AppColor.primaryColor,
      ),
    );

    diets.add(
      DietModel(
        name: "Canai Bread",
        iconPath: "assets/images/bread.png",
        level: 'Hard',
        duration: '18 min',
        calorie: '810 kCal',
        viewIsSelected: false,
        boxColor: AppColor.primaryColor,
      ),
    );

    diets.add(
      DietModel(
        name: "Cake",
        iconPath: "assets/images/cake.png",
        level: 'Medium',
        duration: '44 min',
        calorie: '470 kCal',
        viewIsSelected: true,
        boxColor: AppColor.primaryColor,
      ),
    );

    return diets;
  }
}
