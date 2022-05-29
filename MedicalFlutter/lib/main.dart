import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:helloworld/category_products.dart';

import 'package:helloworld/login.dart';
import 'package:helloworld/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
