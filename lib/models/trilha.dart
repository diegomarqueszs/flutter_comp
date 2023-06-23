class DataTrilhas {
  final String title;
  final String description;
  final String time;
  final String image;
  final int star;
  final int rate;

  DataTrilhas(
    this.title,
    this.description,
    this.image,
    this.time,
    this.star,
    this.rate,
  );
}

List<DataTrilhas> dataListTrilhas = [
  DataTrilhas(
    "Front-End",
    "Está é uma Capacitacao flutter com foco em mobile",
    "assets/images/cards/flutter.png",
    "5 horas",
    3,
    45,
  ),
  DataTrilhas(
      "Capacitação JavaScript - Front-End",
      "Está é uma Capacitacao JavaScript com foco em front end",
      "assets/images/cards/javascript.png",
      "5h:16min",
      3,
      59),
  DataTrilhas(
    "Infra",
    "Está é uma Capacitacao React com foco em front end",
    "assets/images/cards/react.png",
    "2h:30min",
    5,
    15,
  ),
  DataTrilhas(
    "Mobile",
    "Está é uma capcitação Figma com foco em UX/UI",
    "assets/images/cards/figma.png",
    "1h:30min",
    4,
    84,
  ),
];
