import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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

  static List<Widget> _widgetOptions = <Widget>[
    CountryFoodPage(country: 'Italy', food: 'Pizza'),
    CountryFoodPage(country: 'Japan', food: 'Sushi'),
    CountryFoodPage(country: 'Mexico', food: 'Tacos'),
    CountryFoodPage(country: 'India', food: 'Curry'),
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
        title: Text('Food App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flag, color: Colors.black,),
            label: 'Italy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag, color: Colors.black,),
            label: 'Japan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag, color: Colors.black,),
            label: 'Mexico',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag, color: Colors.black,),
            label: 'India',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CountryFoodPage extends StatelessWidget {
  final String country;
  final String food;

  CountryFoodPage({required this.country, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Country: $country',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Food: $food',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
