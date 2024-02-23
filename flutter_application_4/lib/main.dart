import 'package:flutter/material.dart';

void main() {
  runApp(UserInfoApp());
}

class UserInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserInfoScreen(),
    );
  }
}

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  String _selectedSex = '';
  String _selectedStatus = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sex:',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 'male',
                  groupValue: _selectedSex,
                  onChanged: (value) {
                    setState(() {
                      _selectedSex = value.toString();
                    });
                  },
                ),
                Text('Male'),
                Radio(
                  value: 'female',
                  groupValue: _selectedSex,
                  onChanged: (value) {
                    setState(() {
                      _selectedSex = value.toString();
                    });
                  },
                ),
                Text('Female'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Marital Status:',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 'single',
                  groupValue: _selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      _selectedStatus = value.toString();
                    });
                  },
                ),
                Text('Single'),
                Radio(
                  value: 'married',
                  groupValue: _selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      _selectedStatus = value.toString();
                    });
                  },
                ),
                Text('Married'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save user information
                print('Sex: $_selectedSex, Marital Status: $_selectedStatus');
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
