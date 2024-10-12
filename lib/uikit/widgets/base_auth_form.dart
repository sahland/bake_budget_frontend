import 'package:flutter/material.dart';

class BaseAuthForm extends StatelessWidget {
  final String labelText;
  final String validatorText;
  final TextEditingController controller;
  final bool obscureText;
  const BaseAuthForm(
      {required this.labelText,
      required this.validatorText,
      required this.controller,
      required this.obscureText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
    );
  }
}
