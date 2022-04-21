import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp(options:FirebaseOptions(
      apiKey: "AIzaSyCQ6J9dMU23OtAJJFEtu-lW39GiOv-SDY0",
      authDomain: "wacko-346501.firebaseapp.com",
      projectId: "wacko-346501",
      storageBucket: "wacko-346501.appspot.com",
      messagingSenderId: "909494370024",
      appId: "1:909494370024:web:430b8b183b7730def2d35d",
      measurementId: "G-6NFRHGW7WJ"
    )).whenComplete(() async {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wacko University',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}