import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(
              imagePath: "assets/images/black/11.jpg",
              title: 'Login',
              subtitle:
                  "Train and live the new experience of \nexercising at home",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formLogin(),
                  const SizedBox(height: 15),
                  forgetButton(),
                  const SizedBox(height: 15),
                  ColumnButtons(
                    label1: 'Login',
                    label2: 'Register',
                    onPressed1: () {},
                    onPressed2: () => Get.toNamed(Routes.register),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget forgetButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Get.toNamed(Routes.forgetPassword),
        child: const Text(
          "Forgot your password?",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  Widget formLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomTextField(
          label: 'Email',
          hint: 'miziad2000@gmail.com',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),
        CustomTextField(
          label: 'Password',
          hint: '********',
          obscureText: true,
        ),
      ],
    );
  }
}
