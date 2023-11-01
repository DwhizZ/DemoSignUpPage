
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_pages/src/config/themes/app_styles.dart';
import 'package:login_pages/src/global_widgets/social_login_button.dart';

class SocialLogInBar extends StatelessWidget {
  const SocialLogInBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Sign Up with one of the following options.',
            style: AppStyles.bodyStyle),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialLoginButton(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 5, 56, 97),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: const Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            SocialLoginButton(
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 5, 56, 97),
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
