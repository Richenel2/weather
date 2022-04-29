import 'package:flutter/material.dart';
import 'package:weather/constants.dart/theme.dart';
import 'package:weather/screens/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.dark,
      home: const LoadingPage(),
    );
  }
}
