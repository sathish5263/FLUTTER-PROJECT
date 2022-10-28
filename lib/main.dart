import 'package:flutter/material.dart';

import 'auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'MY_CAFE',
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: Authpage(),
    );
  }
}
