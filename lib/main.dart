import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MovilBikeApp());
}

class MovilBikeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovilBike',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
