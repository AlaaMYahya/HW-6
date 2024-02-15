import 'package:flutter/material.dart';
import 'package:hw6_alaa_alyahya/helper/extintion.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.name, required this.email});

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidget() * 0.9,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border:
            Border(bottom: BorderSide(color: Colors.purple.shade400, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("Name:"),
          Text(name),
          const Text(" | "),
          const Text("Email:"),
          Text(email),
        ],
      ),
    );
  }
}
