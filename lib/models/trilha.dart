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
    "Trilha - Front-End",
    "Desenvolva sites e webapps usando HTML, CSS e JavaScript, aprendendo boas práticas, as últimas versões do JavaScript e ferramentas/frameworks populares como React, Angular, Webpack e jQuery na Escola de Front-end.",
    "assets/images/trilhas/front.png",
    "5 horas",
    3,
    45,
  ),
  DataTrilhas(
      "Trilha - Data Science",
      "Ciência de Dados impulsiona análises e decisões com dados, exigindo especialistas e promovendo uma cultura de dados.",
      "assets/images/trilhas/dataS.png",
      "5h:16min",
      3,
      59),
  DataTrilhas(
    "Trilha - DevOps",
    "DevOps é um movimento cultural, uma forma de pensar onde todas as pessoas devem participar para melhorar a qualidade do software, automatizar e monitorar todas as operações, realizando testes, integrações e entregas contínuas.",
    "assets/images/trilhas/devops.png",
    "2h:30min",
    5,
    15,
  ),
  DataTrilhas(
    "Trilha - Mobile",
    "Nesta formação, você vai percorrer uma jornada do Curso Flutter: Widgets, Stateless, Stateful, Imagens e Animações até o Curso Flutter: gerenciamento de estados com Provider para entender como criar aplicativos do zero.",
    "assets/images/trilhas/mobile.png",
    "1h:30min",
    4,
    84,
  ),
];
