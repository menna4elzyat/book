import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final bool obscureText;
  final String? Function(String?) validator;

  const CustomTextFieldWidget({
    required this.controller,
    required this.textInputType,
    required this.hintText,
    this.obscureText = false,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: textInputType,
        style: TextStyle(
          color: Colors.black
        ),
        decoration: InputDecoration(

          hintText: hintText,
          hintStyle:Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey[500]),
          border: InputBorder.none,

        ),
        validator: validator,
      ),
    );
  }
}
