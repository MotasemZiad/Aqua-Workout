import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          imagePath: imagePath,
          height: Get.height * 0.55,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                thirdColor,
                Colors.transparent,
              ],
            ),
          ),
          height: Get.height * 0.55,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text.rich(
                  TextSpan(
                    text: 'HARD\t',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Bebas',
                      letterSpacing: 5,
                    ),
                    children: [
                      TextSpan(
                        text: 'ELEMENT',
                        style: TextStyle(
                          color: firstColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
