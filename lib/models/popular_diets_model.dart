class PopularDietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;

  PopularDietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
  });

  static List<PopularDietModel> getPopularDiets() {
    List<PopularDietModel> popularDiets = [];

    popularDiets.add(
      PopularDietModel(
        name: "Salmon Nigiri",
        iconPath: "assets/images/salmon-nigiri.png",
        level: 'Easy',
        duration: '30 min',
        calorie: '180 kCal',
        viewIsSelected: true,
      ),
    );

    popularDiets.add(
      PopularDietModel(
        name: "Canai Bread",
        iconPath: "assets/images/canai-bread.png",
        level: 'Hard',
        duration: '18 min',
        calorie: '810 kCal',
        viewIsSelected: false,
      ),
    );

    popularDiets.add(
      PopularDietModel(
        name: "Blueberry Cake",
        iconPath: "assets/images/blueberry-cake.png",
        level: 'Medium',
        duration: '44 min',
        calorie: '470 kCal',
        viewIsSelected: true,
      ),
    );

    return popularDiets;
  }
}
