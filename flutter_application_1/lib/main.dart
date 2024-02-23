import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SM Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Container(
      alignment: Alignment.center,
      child: Text('Conteúdo relacionado à Indústria'),
    ),
    Container(
      alignment: Alignment.center,
      child: Text('Conteúdo relacionado à Agricultura'),
    ),
    Container(
      alignment: Alignment.center,
      child: Text('Conteúdo relacionado à Saúde'),
    ),
    Container(
      alignment: Alignment.center,
      child: Text('Conteúdo relacionado à Economia'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SM Mobile App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Indústria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grass),
            label: 'Agricultura',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Saúde',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Economia',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
