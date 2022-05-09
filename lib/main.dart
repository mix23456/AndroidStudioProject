import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:newinstal/Screen/LoginScreen_1.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry God',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO( 2,169,222, 1 )
            ),),
          appBarTheme: AppBarTheme(
            foregroundColor: Color.fromRGBO( 19,51,65, 1 ) ,
          ),
          primaryColor: Colors.black
      ),
      home:
      LoginSC(),

    );
  }
}
