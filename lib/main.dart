import 'package:flutter/material.dart';
import 'package:page_view_tutorial/simple_page_view.dart';

import '/advanced_page_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(TextStyle(
              color: Colors.white,
              fontSize: 18,
            )),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            padding: MaterialStatePropertyAll(
              EdgeInsets.all(8.0),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SimplePageView(),
    );
  }
}
