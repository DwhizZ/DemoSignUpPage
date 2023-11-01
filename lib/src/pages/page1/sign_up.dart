import 'package:flutter/material.dart';
import 'package:login_pages/src/config/themes/app_styles.dart';
import 'package:login_pages/src/global_widgets/app_text_field.dart';
import 'package:login_pages/src/global_widgets/social_login_bar.dart';

import 'package:login_pages/src/pages/page1/components/sign_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TODO: EXTRACT THIS APP BAR
                // TODO: REMOVE SIZEDBOX
                // TODO: UPDATE YOUR ROUTES TO HAVE A CLASS THAT HOLDS THE NAMES
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    const Text('  Sign Up', style: AppStyles.headerStyle),
                  ],
                ),
                const SizedBox(height: 50),
                const SocialLogInBar(),
                const SizedBox(height: 70),
                AppTextField(
                  controller: nameController,
                  hintText: "your name",
                  isPasswordVisible: isPasswordVisible,
                  label: "Name",
                ),
                const SizedBox(height: 25),
                AppTextField(
                    controller: emailController,
                    hintText: 'willis@gmail.com',
                    isPasswordVisible: false,
                    label: 'Email'),
                const SizedBox(height: 25),
                AppTextField(
                    controller: passwordController,
                    hintText: '********',
                    isPasswordVisible: isPasswordVisible,
                    label: 'Password'),
                const SizedBox(height: 80),
                const SignButton(
                    text: 'Sign Up',
                    followUpText: 'Already have an account? ',
                    command: 'Log in')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
