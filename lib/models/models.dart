class DataModel {
  final String title;
  final String description;
  final String image;

  DataModel(
    this.title,
    this.description,
    this.image,
  );
}

List<DataModel> dataList = [
  DataModel(
      "Flutter", "Capacitacao flutter", "assets/images/cards/flutter.png"),
  DataModel("JavaScript", "Capacitacao JavaScript",
      "assets/images/cards/javascript.png"),
  DataModel("React", "Capacitacao React", "assets/images/cards/react.png"),
  DataModel("Figma", "Capacitacao Figma", "assets/images/cards/figma.png"),
];
