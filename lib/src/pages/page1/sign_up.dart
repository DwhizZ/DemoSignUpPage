import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_pages/src/config/themes/app_styles.dart';
import 'package:login_pages/src/global_widgets/app_text_field.dart';
import 'package:login_pages/src/pages/page1/components/my_text_fields.dart';
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
                const Text('Sign Up with one of the following options.',
                    style: AppStyles.bodyStyle),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 231, 229, 229)),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 5, 56, 97),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 231, 229, 229),
                      ),
                      child: const Icon(
                        Icons.facebook,
                        color: Color.fromARGB(255, 5, 56, 97),
                        size: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                AppTextField(
                  controller: nameController,
                  hintText: "your name",
                  isPasswordVisible: isPasswordVisible,
                  label: "Name",
                ),
                const SizedBox(height: 25),
                const Text('Email', style: AppStyles.subHeaderStyle),
                const SizedBox(height: 15),
                MyTextFields(
                    controller: emailController,
                    hintText: 'jennywilson@example.com',
                    isPasswordVisible: false),
                const SizedBox(height: 25),
                const Text('Password', style: AppStyles.subHeaderStyle),
                MyTextFields(
                    controller: passwordController,
                    hintText: '********',
                    isPasswordVisible: isPasswordVisible),
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
