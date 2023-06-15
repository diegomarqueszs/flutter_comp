import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _currentPage = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.4,
    );

    @override
    dispose() {
      super.dispose();
      _pageController.dispose();
    }
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
      body: Column(
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
                borderRadius:
                    BorderRadius.circular(5), // Valor do raio de arredondamento
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
            child: PageView.builder(
              itemCount: dataList.length,
              controller: _pageController,
              physics: const ClampingScrollPhysics(),
              itemBuilder: ((context, index) {
                return carroselView(index);
              }),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 40.0,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff161619),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [Text('teste')],
              ),
            ),
          ),
        ],
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
                    )
                  ]),
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
        /*Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            data.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),*/
      ],
    );
  }
}
