import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(
              imagePath: 'assets/images/black/6.jpg',
              title: 'Forget Password',
              subtitle:
                  'Train and live the new experience of\nexercising at home',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: CustomTextField(
                label: 'Email',
                hint: 'miziad2000@gmail.com',
              ),
            ),
            ColumnButtons(
              label1: 'Submit',
              label2: 'Cancel',
              onPressed1: () {},
              onPressed2: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
