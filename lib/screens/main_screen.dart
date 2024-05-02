import 'package:flutter/material.dart';
import 'package:qr_code/screens/my_home.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.grey.shade800,
          primaryColorDark: Colors.grey.shade900,
          primaryColorLight: Colors.grey.shade300,

      ),
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
