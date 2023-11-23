// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/responsive/DesktopScaffold.dart';
import 'package:portfoilio/responsive/Responsive_Layout.dart';
import 'package:portfoilio/responsive/mobileScaffold.dart';
import 'package:portfoilio/responsive/tabletScaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: duplicate_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() async{

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
            useMaterial3: true,
            textTheme: TextTheme(
                titleLarge: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'font1',
            ))),
        home: responsive_Layout(
            mobileScaffold: mobileScaffold(),
            tabletScaffold: tabletScaffold(),
            desktopScaffold: desktopScaffold()));
  }
}
