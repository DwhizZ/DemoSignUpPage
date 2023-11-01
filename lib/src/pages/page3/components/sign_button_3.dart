import 'package:flutter/material.dart';
import 'package:login_pages/src/config/themes/app_styles.dart';

class SignButton3 extends StatelessWidget {
  final String text;

  final String command;
  const SignButton3({super.key, required this.text, required this.command});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 5, 56, 97),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(0, 50),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          child: Text(text, style: AppStyles.subHeaderStyle),
        ),
        const SizedBox(height: 30),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  command,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 5, 56, 97),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
