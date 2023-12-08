import 'package:anihunt/Screen/DetailedScreen.dart';

import '../Screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'AniHunt',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: detailedScreen(),
    );
  }
}
