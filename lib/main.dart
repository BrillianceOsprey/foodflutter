
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodflutter/auth/login_status.dart';
import 'package:foodflutter/carts/cart.dart';
import 'package:foodflutter/login_screen.dart';

import 'package:foodflutter/screen/home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(providers: [
     ChangeNotifierProvider(create: (context)=> Cart()),
   //  ChangeNotifierProvider(create: (context)=> LoginStatus())


    ], child: const MyApp(),)
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
 //  bool  status = Provider.of<LoginStatus>(context).getStatus();
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.pink),
   //   home: (status)? const Home(): LoginScreen()
   home: Home(),
    
    );
        //when login .if correct , go to home,
        //not correct, go to LoginScreen
        
     // home: const Home());
  }
}
