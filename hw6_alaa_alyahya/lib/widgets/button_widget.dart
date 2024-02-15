import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget(
      {super.key, required this.buttonText, required this.action});

  final String buttonText;
  final Function() action;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}
 
class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: 
        widget.action,
      style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.purple)),
      child: Text(
        widget.buttonText,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
