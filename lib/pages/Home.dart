import 'package:flutter/material.dart';
import 'package:flutter_comp/models/trilha.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../models/models.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late CarouselController _carouselController;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bem vindo ${Get.arguments['title']}"),
        backgroundColor: Color(0xff1793A6),
        automaticallyImplyLeading: false,
        leading: Image.asset(
          'assets/images/logo3.png',
          scale: 3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1793A6).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Suas capacitações',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 2,
              child: CarouselSlider.builder(
                itemCount: dataList.length,
                carouselController: _carouselController,
                options: CarouselOptions(
                  initialPage: _currentPage,
                  viewportFraction: 0.4,
                  enableInfiniteScroll: true,
                  //enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIndex) {
                  return carroselView(index);
                },
              ),
            ),
            Container(
              //height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(
                top: 40.0,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff1793A6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  const Text(
                    "Buscar trilhas",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(
                        left: 40.0, bottom: 40.0, right: 40.0, top: 10.0),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        labelText: 'Pesquisar trilha',
                        filled: true,
                        fillColor: Color(0xffF1F1F1),
                        prefixIcon: Icon(Icons.search),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin:
                          const EdgeInsets.only(top: 0, bottom: 25, left: 40),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Capacitações recentes',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff1793A6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < dataListTrilhas.length; i++)
                    trilhas(dataListTrilhas[i]),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffFEEEFEA),
    );
  }

  Widget carroselView(int index) {
    return carroselCard(dataList[index]);
  }

  Widget carroselCard(DataModel data) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.toNamed('Details', arguments: {
                'title': data.title,
                'image': data.image,
                'description': data.description,
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(data.image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Text(
          data.title,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget trilhas(DataTrilhas dataTrilhas) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 40.0,
              right: 40.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Image.asset(
                      dataTrilhas.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        dataTrilhas.title,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        dataTrilhas.description,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int i = 0;
                              i < dataTrilhas.star;
                              i++) //estrela preenchida
                            const Icon(Icons.star,
                                color: Color(0xff1793A6), size: 30),
                          for (int j = 0;
                              j < (5 - dataTrilhas.star);
                              j++) //estrela vazia
                            const Icon(Icons.star_border,
                                color: Color(0xff1793A6), size: 30),
                          Text(
                            " [${dataTrilhas.rate}] ",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1793A6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            print("clicou na trilha ${dataTrilhas.title}");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Iniciar trilha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
