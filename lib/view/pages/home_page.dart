import 'package:flutter/material.dart';
import 'package:flutter_fitness_ui/resources/app_color.dart';
import 'package:flutter_fitness_ui/view/widgets/custom_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
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
