//SHA1: 5C:CC:77:91:93:AF:EE:24:F2:D0:78:CA:BC:5E:28:8E:03:F3:1C:17

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {

  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future _backgroundHandler( RemoteMessage message) async{
    print('background Handler ${ message.messageId }');
  }
  
  static Future _onMessageHandler( RemoteMessage message) async{
    print('onMessage Handler ${ message.messageId }');
  }
  
  static Future _onOpenMessageOpenApp( RemoteMessage message) async{
    print('onOpenMessageOpenApp Handler ${ message.messageId }');
  }


  static Future initializeApp() async{

    // Push Notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token: $token');

    // Handlers
    FirebaseMessaging.onBackgroundMessage( _backgroundHandler );
    FirebaseMessaging.onMessage.listen( _onMessageHandler );
    FirebaseMessaging.onMessageOpenedApp.listen( _onOpenMessageOpenApp );
    

    //Local notifications 

  }

  
}