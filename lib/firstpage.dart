import 'package:flutter/material.dart';
import 'package:qr_scanner_generator/login.dart';
import 'package:qr_scanner_generator/Registration.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          // Image.asset(
          //   'assets/bg2.jpg',
          //   fit: BoxFit.fill,
          // ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30), 
              Center(
                child: Text(
                  'Welcome To This App',
                  style: GoogleFonts.concertOne(
                    color:Colors.white,
                    fontSize:38,
                    fontStyle:FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 40), // Adjust height as needed
              // Image.asset(
              //   'assets/qr.jpg',
              //   height: 300,
              //   width: 300,
              // ),
              Container(
                height: 300,
                 width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/qr.jpg',),
                //fit: BoxFit.cover,
              ),
            ),
          ),
              SizedBox(height: 30), 
              ElevatedButton(
                onPressed: () {
                 Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationScreen(),
            ),
          );
                },
                child: Text('Sign Up'),
              ),
              // Adjust height as needed
              
              SizedBox(height: 10), 
               Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10), 
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
                },
                child: Text('Login'),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
