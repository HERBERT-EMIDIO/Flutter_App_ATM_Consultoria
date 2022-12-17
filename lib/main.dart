import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'App_AtmConsultoria',
      // ignore: prefer_const_constructors
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
