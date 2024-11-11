import 'package:flutter/material.dart';
import 'package:mbc_wellness/main.dart';
import 'package:mbc_wellness/mbc_wellness.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const WellnessApp();
  }
}