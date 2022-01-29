import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: thirdColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              _buildForm(),
              _buildActionButton(),
            ],
          ),
        ));
  }
}

Widget _buildHeader() => const HeaderWidget(
      imagePath: 'assets/images/black/2.jpg',
      title: 'Register',
      subtitle: "Train and live the new experience of \nexercising at home",
    );

Widget _buildForm() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: const [
          CustomTextField(
            label: 'Username',
            hint: 'Motasem Abu Nema',
            keyboardType: TextInputType.name,
          ),
          CustomTextField(
            label: 'Email',
            hint: 'miziad2000@gmail.com',
            keyboardType: TextInputType.emailAddress,
          ),
          CustomTextField(
            label: 'Phone',
            hint: '+970 59 983 8964',
            keyboardType: TextInputType.phone,
          ),
          CustomTextField(
            label: 'Password',
            hint: '********',
            obscureText: true,
          ),
          CustomTextField(
            label: 'Confirm Password',
            hint: '********',
            obscureText: true,
          ),
          SizedBox(height: 12),
          Text(
            'By registering, I agree to the Aqua workout user agreement and privacy policy',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

Widget _buildActionButton() => ColumnButtons(
      label1: 'Register',
      label2: 'Cancel',
      onPressed1: () {},
      onPressed2: () => Get.back(),
    );
