import 'package:flutter/material.dart';
import 'package:flutter_fitness_ui/models/category_model.dart';
import 'package:flutter_fitness_ui/resources/app_color.dart';
import 'package:flutter_fitness_ui/view/widgets/custom_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categorie = [];

  void _getCategory() {
    categorie = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategory();
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: AppColor.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          const SizedBox(height: 40),
          _categorySection(),
        ],
      ),
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
                  color: categorie[index].boxColor.withOpacity(0.5),
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
                        child: SvgPicture.asset(
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
            hintText: "Search ",
            hintStyle: const TextStyle(
              color: AppColor.greyColor,
              fontSize: 15,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                height: 10,
                width: 10,
              ),
            ),
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: AppColor.blackColor,
                      thickness: 0.1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
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
            contentPadding: const EdgeInsets.all(15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )),
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
