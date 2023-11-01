import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFields extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  bool isPasswordVisible;
  MyTextFields(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.isPasswordVisible});

  @override
  State<MyTextFields> createState() => _MyTextFieldsState();
}

class _MyTextFieldsState extends State<MyTextFields> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPasswordVisible && widget.hintText == '********',
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.hintText == '********'
            ? IconButton(
                icon: Icon(widget.isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off, color: const Color.fromARGB(255, 5, 56, 97),),
                onPressed: () {
                  setState(
                    () {
                      widget.isPasswordVisible = !widget.isPasswordVisible;
                    },
                  );
                },
              )
            : null,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none),
      ),
    );
  }
}
