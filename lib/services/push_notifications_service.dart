//SHA1: 5C:CC:77:91:93:AF:EE:24:F2:D0:78:CA:BC:5E:28:8E:03:F3:1C:17

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {

  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;


  static Future initializeApp() async{

    // Push Notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token: $token');
    

    //Local notifications 

  }

  
}