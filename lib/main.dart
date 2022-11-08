import 'package:flutter/material.dart';
import 'package:TIKODC/index.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "TikOdc", debugShowCheckedModeBanner: false, home: Homepage());
  }
}
