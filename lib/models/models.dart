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
  DataModel("Flutter", "Está é uma Capacitacao flutter com foco em mobile",
      "assets/images/cards/flutter.png"),
  DataModel(
      "JavaScript",
      "Está é uma Capacitacao JavaScript com foco em front end",
      "assets/images/cards/javascript.png"),
  DataModel("React", "Está é uma Capacitacao React com foco em front end",
      "assets/images/cards/react.png"),
  DataModel("Figma", "Está é uma capcitação Figma com foco em UX/UI",
      "assets/images/cards/figma.png"),
];
