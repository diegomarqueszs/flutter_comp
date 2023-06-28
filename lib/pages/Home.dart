import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/list_trilha.dart';
import '../components/caroulse_cap.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            const Caroulse(), //cria os carrossel com as capacitações
            Container(
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
                  const listTrilha(), //cria as trilhas
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffFEEEFEA),
    );
  }
}
