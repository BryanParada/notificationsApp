import 'package:flutter/material.dart';
import 'package:notifications_app/screens/home_screen.dart';
import 'package:notifications_app/screens/message_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      routes: {
       'home'   : ( _ ) => HomeScreen(),
       'message': ( _ ) => MessageScreen(),
      },
    );
  }
}