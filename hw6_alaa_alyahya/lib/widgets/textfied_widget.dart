import 'package:flutter/material.dart';
 
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.icon,
      required this.clearButton,
      required this.controller});

  final String hintText;
  final String labelText;
  final IconData icon;
  final Widget clearButton;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.purple,
        ),
        suffix: clearButton,
        hintText: hintText,
        labelText: labelText,
        labelStyle:  TextStyle(color: Colors.purple.shade400),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26)),
        focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade400, width: 2)),
      ),
    );
  }
}
