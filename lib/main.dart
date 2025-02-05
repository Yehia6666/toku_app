import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:toku_app_testing/screen/home_page.dart';
import 'package:toku_app_testing/screen/numbers_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreeN(),
    );
  }
}
