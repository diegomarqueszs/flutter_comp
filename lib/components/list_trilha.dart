import 'package:flutter/material.dart';
import 'package:flutter_comp/models/trilha.dart';

class listTrilha extends StatelessWidget {
  const listTrilha({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < dataListTrilhas.length; i++)
          trilhas(dataListTrilhas[i], context),
      ],
    );
  }

  Widget trilhas(DataTrilhas dataTrilhas, BuildContext context) {
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
