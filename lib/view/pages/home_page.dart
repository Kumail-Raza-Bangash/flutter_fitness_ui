import 'package:flutter/material.dart';
import 'package:flutter_fitness_ui/resources/app_color.dart';
import 'package:flutter_fitness_ui/view/widgets/custom_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          _searchField(),
        ],
      ),
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
