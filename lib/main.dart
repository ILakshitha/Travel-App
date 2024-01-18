import 'package:flutter/material.dart';
import 'package:travalapp/page/navpages/bar_item_page.dart';
import 'package:travalapp/page/navpages/main_page.dart';
import 'package:travalapp/page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
