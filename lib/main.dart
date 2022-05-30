import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:newinstal/Screen/LoginScreen_1.dart';
import 'package:firebase_core/firebase_core.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

final Future<FirebaseApp> _initfirebase = Firebase.initializeApp();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAhPlJJwsq5bjUt3KCr6Nh3RX9JWFln87M",
      appId: "1:174723201982:android:03229047b6cd6b182157ef",
      messagingSenderId: "1:174723201982:android:03229047b6cd6b182157ef",
      projectId: "test-4ca43",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initfirebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('${snapshot.error}'),
              ),
            );
          } else {
            return MaterialApp(
              title: 'Laundry God',
              theme: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(2, 169, 222, 1)),
                  ),
                  appBarTheme: AppBarTheme(
                    foregroundColor: Color.fromRGBO(19, 51, 65, 1),
                  ),
                  primaryColor: Colors.black),
              home: LoginSC(),
            );
          }
        });
  }
}
