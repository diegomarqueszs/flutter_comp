import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/Login.dart';
import 'pages/Home.dart';
import 'pages/Details.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false, // Remove debug banner
    home: const Login(), //define a tela inicial

    getPages: [
      //define rotas
      GetPage(name: "/Login", page: () => const Login()),
      GetPage(name: "/Home", page: () => const Home()),
      GetPage(name: "/Details", page: () => const Details()),
    ],
  ));
}
