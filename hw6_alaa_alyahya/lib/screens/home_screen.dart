import 'package:flutter/material.dart';
import 'package:hw6_alaa_alyahya/widgets/lower_widget.dart';
import 'package:hw6_alaa_alyahya/widgets/upper_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Column(
              children: [
                UpperSection(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: ListOfUsers()),
          ],
        ),
      ),
    );
  }
}
