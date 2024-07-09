import 'package:flutter/material.dart';
import 'package:qr_scanner_generator/home.dart';
//import 'package:qr_scanner_generator/Registration.dart';
import 'package:qr_scanner_generator/login.dart';
import 'package:qr_scanner_generator/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: '/first',
      routes: {
        '/home':(BuildContext context) => const HomeScreen() ,
       // '/signup':(BuildContext context) => const RegistrationScreen() ,
        '/login':(BuildContext context) => const LoginScreen() ,
        '/first':(BuildContext context) => const FirstScreen() 
      },
    );
  }
}

