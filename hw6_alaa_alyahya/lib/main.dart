import 'package:flutter/material.dart';
import 'package:hw6_alaa_alyahya/screens/home_screen.dart';
import 'package:hw6_alaa_alyahya/setup.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(   
      debugShowCheckedModeBanner: false,   
      home:  HomeScreen(),
    );
  }
}
