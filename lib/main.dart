import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF1D1E33),
      ),
      home: LoadingScreen(),
    );
  }
}
//0xFF1D1E33