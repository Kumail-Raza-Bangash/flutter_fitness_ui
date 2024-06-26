import 'package:flutter/material.dart';
import 'package:flutter_fitness_ui/models/category_model.dart';
import 'package:flutter_fitness_ui/models/diet_model.dart';
import 'package:flutter_fitness_ui/models/popular_diets_model.dart';
import 'package:flutter_fitness_ui/resources/app_color.dart';
import 'package:flutter_fitness_ui/view/widgets/custom_icon.dart';
import 'package:flutter_img/flutter_img.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categorie = [];
  List<DietModel> diet = [];
  List<PopularDietModel> popularDiet = [];

  void _getinitialInfo() {
    categorie = CategoryModel.getCategories();
    diet = DietModel.getDiets();
    popularDiet = PopularDietModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getinitialInfo();
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: AppColor.whiteColor,
      body: ListView(
        children: [
          _searchField(),
          const SizedBox(height: 40),
          _categorySection(),
          const SizedBox(height: 40),
          _dietSection(),
          const SizedBox(height: 40),
          _popularDietSection(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Column _popularDietSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Popular",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 240,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemCount: popularDiet.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                width: 180,
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Img(
                          popularDiet[index].iconPath,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          popularDiet[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.blackColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${popularDiet[index].calorie} | ${popularDiet[index].level}',
                          style: const TextStyle(
                            color: AppColor.greyColor,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          popularDiet[index].duration,
                          style: const TextStyle(
                            color: AppColor.greyColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            popularDiet[index].viewIsSelected
                                ? AppColor.primaryColor
                                : AppColor.transparentColor,
                            popularDiet[index].viewIsSelected
                                ? AppColor.secondaryColor
                                : AppColor.transparentColor,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                            color: popularDiet[index].viewIsSelected
                                ? AppColor.greyColor
                                : AppColor.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column _dietSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Recommendation\n for Diet",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 240,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemCount: diet.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 180,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: diet[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Img(
                          diet[index].iconPath,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          diet[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.blackColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${diet[index].calorie} | ${diet[index].level}',
                          style: const TextStyle(
                            color: AppColor.greyColor,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          diet[index].duration,
                          style: const TextStyle(
                            color: AppColor.greyColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            diet[index].viewIsSelected
                                ? AppColor.primaryColor
                                : AppColor.transparentColor,
                            diet[index].viewIsSelected
                                ? AppColor.secondaryColor
                                : AppColor.transparentColor,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                            color: diet[index].viewIsSelected
                                ? AppColor.greyColor
                                : AppColor.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column _categorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 150,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemCount: categorie.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: categorie[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Img(
                          categorie[index].iconPath,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    Text(
                      categorie[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.blackColor.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 40,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Search",
          hintStyle: const TextStyle(
            color: AppColor.greyColor,
            fontSize: 15,
          ),
          prefixIcon: const SizedBox(
            width: 50,
            child: Img(
              "assets/icons/search.svg",
              height: 15,
              width: 15,
            ),
          ),
          suffixIcon: const SizedBox(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: AppColor.blackColor,
                    thickness: 0.1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Img(
                      "assets/icons/filter.svg",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          fillColor: AppColor.whiteColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: CustomIcon(
          onTap: () {},
          svgPath: "assets/icons/arrow.svg",
          height: 30,
          width: 30,
          bgColor: AppColor.secondaryColor,
          svgHeight: 20,
          svgWidth: 20,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          child: CustomIcon(
            onTap: () {},
            svgPath: "assets/icons/dot.svg",
            height: 40,
            width: 40,
            bgColor: AppColor.secondaryColor,
            svgHeight: 10,
            svgWidth: 10,
          ),
        ),
      ],
    );
  }
}
