import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/../core.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: Stack(
        children: [
          const BackgroundImage(
            imagePath: "assets/images/black/9.jpg",
          ),
          Container(
            width: Get.width,
            height: Get.height,
            color: thirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
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
                      children: const [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 17),
                        Text(
                          "Train and live the new experience of \nexercising at home",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.about),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: firstColor,
                      ),
                      height: 50,
                      width: Get.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Try Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.login),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      height: 50,
                      width: Get.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
