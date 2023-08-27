import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final String text;
  final bool isObscure;

  const CustomTextInput(
      {super.key,
      required this.controller,
      required this.text,
      this.errorMessage,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage ?? "This field cannot be empty";
        } else {
          return null;
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObscure == true ? true : false,
      decoration: InputDecoration(
        labelText: text,
        hintText: text,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
