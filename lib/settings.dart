import 'package:flutter/material.dart';
import 'package:qr_scanner_generator/privacy_policy.dart';
import 'package:qr_scanner_generator/terms_service.dart';
import 'package:qr_scanner_generator/about.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isDarkMode = false;
  bool _notificationsEnabled = true;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Settings', style: TextStyle(color: Colors.white)),
        ),
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
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              SwitchListTile(
                title: const Text('Dark Mode', style: TextStyle(color: Colors.white)),
                value: _isDarkMode,
                onChanged: (bool value) {
                  setState(() {
                    _isDarkMode = value;
                    // Add logic to toggle dark mode in your app
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Enable Notifications', style: TextStyle(color: Colors.white)),
                value: _notificationsEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _notificationsEnabled = value;
                    // Add logic to handle notification settings
                  });
                },
              ),
              ListTile(
                title: const Text('Language', style: TextStyle(color: Colors.white)),
                subtitle: Text(_selectedLanguage, style: TextStyle(color: Colors.white)),
                onTap: () {
                  _showLanguageDialog();
                },
              ),
              const Divider(color: Colors.white),
              ListTile(
                title: const Text('Privacy Policy', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Terms of Service', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TermsOfServicePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.white),
                title: const Text('About', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Aboutpage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Language', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 66, 6, 122),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RadioListTile<String>(
                title: const Text('English', style: TextStyle(color: Colors.white)),
                value: 'English',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                    Navigator.of(context).pop();
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Bangla', style: TextStyle(color: Colors.white)),
                value: 'Bangla',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                    Navigator.of(context).pop();
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('French', style: TextStyle(color: Colors.white)),
                value: 'French',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                    Navigator.of(context).pop();
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
