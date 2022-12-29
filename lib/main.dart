import 'package:exampel3/process/ApprovedScreen.dart';
import 'package:exampel3/process/Process10Form.dart';
import 'package:exampel3/process/Process2.dart';
import 'package:exampel3/process/Process3.dart';
import 'package:exampel3/process/Process4.dart';
import 'package:exampel3/process/Process5.dart';
import 'package:exampel3/process/Process6.dart';
import 'package:exampel3/process/Process7.dart';
import 'package:exampel3/process/Process8.dart';
import 'package:exampel3/process/Process9.dart';
import 'package:exampel3/process/Procress1.dart';
import 'package:exampel3/process/serching.dart';
import 'package:exampel3/process/uploadimages.dart';

import 'package:flutter/material.dart';

import 'GetPreApprovedScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: GetPreApprovedScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        Process1Screen.routeName: (ctx) => Process1Screen(),
        Process2Screen.routeName: (ctx) => Process2Screen(),
        Process3Screen.routeName: (ctx) => Process3Screen(),
        Process4Screen.routeName: (ctx) => Process4Screen(),
        Process5Screen.routeName: (ctx) => Process5Screen(),
        Process6Screen.routeName: (ctx) => Process6Screen(),
        Process7Screen.routeName: (ctx) => Process7Screen(),
        Process8Screen.routeName: (ctx) => Process8Screen(),
        Process9Screen.routeName: (ctx) => Process9Screen(),
        Process10Form.routeName:(ctx) => Process10Form(),
        Serching.routeName:(ctx) => Serching(),
        ApprovedScreen.routeName:(ctx) => ApprovedScreen(),
        ImageUpload.routeName:(ctx) => ImageUpload(),
        //Home2.routeName:(ctx) => Home2(),




      },
    );
  }
}
