import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odc_tik/index.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

import 'Accueil.dart';
import 'formulaireInscription.dart';
import 'inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "TikOdc",
        debugShowCheckedModeBanner: false,
        home: Homepage());
  }
}