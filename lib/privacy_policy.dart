import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 66, 6, 122),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Introduction',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This Privacy Policy explains how we handle your personal information when you use our app. We are committed to protecting your privacy and ensuring that your personal information is handled in a safe and responsible manner.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Information We Collect',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We collect information to provide better services to all our users. This includes:',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '1. Personal Information: When you sign up, we collect personal details such as name, email address, and phone number.',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '2. Usage Information: We collect information about how you use our app, such as the features you use and the actions you take.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'How We Use Information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We use the information we collect to:',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '1. Provide, maintain, and improve our services.',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '2. Develop new services and features.',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '3. Understand and analyze how you use our app.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Information Sharing',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We do not share your personal information with companies, organizations, or individuals outside of our company except in the following cases:',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '1. With your consent.',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '2. For legal reasons, such as to comply with applicable laws or respond to valid legal requests.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Data Security',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We implement a variety of security measures to ensure the safety of your personal information. However, please note that no method of transmission over the internet or method of electronic storage is 100% secure.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Changes to This Policy',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'If you have any questions about this Privacy Policy, please contact us at: qrscanner@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
