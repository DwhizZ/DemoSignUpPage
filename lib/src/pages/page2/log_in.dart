import 'package:flutter/material.dart';
import 'package:login_pages/src/config/routes/route_names.dart';
import 'package:login_pages/src/global_widgets/app_text_field.dart';
import 'package:login_pages/src/global_widgets/page_app_bar.dart';
import 'package:login_pages/src/global_widgets/social_login_bar.dart';
import 'package:login_pages/src/pages/page2/components/sign_button_2.dart';
import '../../config/themes/app_styles.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                PageAppBar(
                  text: 'Log In',
                  pageBackArrowPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 50),
                const SocialLogInBar(),
                const SizedBox(height: 80),
                AppTextField(
                    controller: emailController,
                    hintText: 'jennywilson@example.com',
                    isPasswordVisible: false,
                    label: 'Email'),
                const SizedBox(height: 25),
                AppTextField(
                    controller: passwordController,
                    hintText: '********',
                    isPasswordVisible: isPasswordVisible,
                    label: 'Password'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.forgotPasswordPage);
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: AppStyles.subHeaderStyle,
                  ),
                ),
                const SizedBox(height: 80),
                const SignButton2(
                    text: 'Sign Up',
                    followUpText: 'Don\'t have an account? ',
                    command: 'Sign Up'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
