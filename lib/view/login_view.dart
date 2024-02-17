import 'package:flutter/material.dart';
import 'package:k_buss/utils/constants.dart';

import '../widgets/app_button.dart';
import '../widgets/custom_textfield.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage(loginBg), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: w / 2.5,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: nameController,
                    hint: 'User Name',
                    isLogin: true,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: passwordController,
                    hint: 'Password',
                    isLogin: true,
                    isObscure: true,
                  ),
                  const SizedBox(height: 20),
                  AppButton(label: 'Login', onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
