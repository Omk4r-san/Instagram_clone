import 'package:flutter/material.dart';
import 'package:sendry_app/views/screens/accounts_screen.dart';
import 'package:sendry_app/views/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sendry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccountsScreen(),
    );
  }
}
