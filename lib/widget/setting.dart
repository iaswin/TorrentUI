import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  bool useSystemTheme = false;
  bool useFingerprint = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.deepPurple),
             
            ),
    
            ListTile(
              title: Text('Language'),
              subtitle: Text('English'),
              leading: Icon(Icons.language),
              onTap: () {
                
              },
            
            ),
            ListTile(
              title: Text('Use System Theme'),
              leading: Icon(Icons.phone_android),
              trailing: Switch(
                value: useSystemTheme,
                onChanged: (value) {
                  setState(() {
                    useSystemTheme = value;
                  });
                },
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}

