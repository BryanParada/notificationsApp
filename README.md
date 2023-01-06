# notifications_app

A Flutter app to show notifications

Video demo: https://youtu.be/yXPIGPCAA3E

## Features  
- Get notifications from Firebase Cloud Messaging - Postman 

## What did i use in this app? 

- FMC - Firebase cloud messaging
- Push Notifications
- Notifications when the app is open
- Notifications when the app is in the background or terminated
- Using the GlobalKey to handle navigation
- Firebase REST service for sending push notifications
- Sending arguments in push notification
- Using push arguments

## How to send a notification via Firebase Cloud Messaging?

- get your device token by running the app one ( check debug console )
- Compose a new message at Firebase Console - Cloud Messaging

![image](https://user-images.githubusercontent.com/51382458/211095711-6d65be25-ed5e-4084-ab51-a3917e5844b3.png)
![image](https://user-images.githubusercontent.com/51382458/211095626-15f81dd5-18e5-431f-951a-c373c698ba15.png)
![image](https://user-images.githubusercontent.com/51382458/211095792-19aa684c-d145-40a9-9855-4cc96052a0eb.png) 

## How to send a notification via Firebase Cloud Messaging using REST Service?

Get your Google Access Token key:
![image](https://user-images.githubusercontent.com/51382458/211097261-81a4dc82-5667-4be5-a43d-4856e62c6386.png)

Authorization:
![image](https://user-images.githubusercontent.com/51382458/211097090-bda875a5-dc0e-4821-9f80-22e4de93704d.png)

Body:

```
{
    "notification": {
        "body": "Text of the notification!!",
        "title": "Title"
    },
    "priority": "high",
    "data": {
        "product": "Hot Water"
    },
    "to":
    {{tokenDevice}} 
}
```

![image](https://user-images.githubusercontent.com/51382458/211097021-9d73bf7a-ccf3-4416-b61e-7dc91276847b.png)



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
