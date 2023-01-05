import 'package:flutter/material.dart';
import 'package:notifications_app/services/push_notifications_service.dart';

import 'package:notifications_app/screens/home_screen.dart';
import 'package:notifications_app/screens/message_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationService.initializeApp();

  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {  
    super.initState();

    PushNotificationService.messagesStream.listen((message) {

      print('My App: $message');
      
     });
  }


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