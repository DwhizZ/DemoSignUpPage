import 'package:flutter/material.dart';
import 'package:login_pages/src/global_widgets/app_text_field.dart';
import 'package:login_pages/src/pages/page3/components/sign_button_3.dart';

import '../../config/themes/app_styles.dart';

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
                    const Text('  Forgot Password',
                        style: AppStyles.headerStyle),
                  ],
                ),
                const SizedBox(height: 60),
                AppTextField(
                    controller: emailController,
                    hintText: 'enter your email',
                    isPasswordVisible: false,
                    label: 'Email'),
                const SizedBox(height: 90),
                const SignButton3(text: 'Submit', command: 'Back to Log in'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
