import 'package:flutter/material.dart';
import '../QRCodeScanner/qr_scanner.dart';
import '../QRCodeGenerator/qr_generator.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    QRScanner(),
    QRGenerator(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'QRScanner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QRGenerator',
          ),
        ],
      ),
    );
  }
}
