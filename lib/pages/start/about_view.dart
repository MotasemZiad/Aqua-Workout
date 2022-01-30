import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/../core.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: Stack(
        children: [
          const BackgroundImage(
            imagePath: "assets/images/black/7.jpg",
          ),
          Container(
            width: Get.size.width,
            height: Get.size.height,
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
                          "About You",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We want to know more about you, follow the next \nsteps to complete the information",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          state: "I'm\nBeginner",
                          detail: "I have trained several times",
                          enable: value == 0 ? true : false,
                          onTap: () => updateFn(0),
                        ),
                        const SizedBox(width: 20),
                        OptionWidget(
                          state: "I'm\nExpert",
                          detail: "I have trained more times",
                          enable: value == 1 ? true : false,
                          onTap: () => updateFn(1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Row(
      children: [
        TextButton(
          onPressed: () => Get.back(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                "Back",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: firstColor,
            ),
            child: const Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
