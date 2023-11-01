import 'package:flutter/material.dart';
import 'package:login_pages/src/pages/page3/components/sign_button_3.dart';

import '../../config/themes/app_styles.dart';
import '../page1/components/my_text_fields.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
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
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const Text('  Forgot Password', style: AppStyles.headerStyle),
                ],
              ),
              const SizedBox(height: 60),
              const Text('Email', style: AppStyles.subHeaderStyle),
              const SizedBox(height: 15),
              MyTextFields(
                  controller: emailController,
                  hintText: 'jennywilson@example.com',
                  isPasswordVisible: false),
              const SizedBox(height: 90),
              const SignButton3(text: 'Submit', command: 'Back to Log in'),
            ],
          ),
        )),
      ),
    );
  }
}
