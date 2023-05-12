import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.controller,
    required this.hintText,
    this.minLines,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      minLines: minLines,
      maxLines: minLines,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
