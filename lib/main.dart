import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:foodflutter/screen/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    // MultiProvider(providers: [
    //ChangeNotifierProvider(create: (context)=> LoginStatus())
    // ignore: prefer_const_constructors
    //],
  const  MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
// bool  status = Provider.of<LoginStatus>(context).getStatus();
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.pink),
        // home: (status)? Home(): LoginScreen(),
        //when login .if correct , go to HOme,
        //not correct, go to LoginScreen
        home: const Home());
  }
}
