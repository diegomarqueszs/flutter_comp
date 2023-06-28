import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../models/cards.dart';

class Caroulse extends StatefulWidget {
  const Caroulse({super.key});

  @override
  State<Caroulse> createState() => _CaroulseState();
}

class _CaroulseState extends State<Caroulse> {
  late CarouselController _carouselController;

  int _currentPage = 1;

  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
}
