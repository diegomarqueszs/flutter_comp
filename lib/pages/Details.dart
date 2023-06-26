import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detalhes de ${Get.arguments['title']}"),
        backgroundColor: const Color(0xff1793A6),
        automaticallyImplyLeading: false,
        leading: Image.asset(
          'assets/images/logo3.png',
          scale: 3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Capacitação de ${Get.arguments['title']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    Get.arguments['description'],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    children: [
                      Icon(
                        Icons.timer_sharp,
                        color: Colors.white,
                      ),
                      Text(
                        "1h 30min",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70.0),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 40.0,
                  right: 40.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Detalhes",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    for (int i = 0; i < 5; i++) card_teste(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff1793A6),
    );
  }

  Widget card_teste() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  Get.arguments['image'],
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Titulo",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Descricao",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "30:00 min",
                    style: TextStyle(color: Color(0xff1793A6), fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 30,
            thickness: 1,
            endIndent: 0,
          ),
        ],
      ),
    );
  }
}
