import 'package:flutter/material.dart';
import 'package:qr_code/firebase_options.dart';
import 'package:qr_code/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainScreen());
}



