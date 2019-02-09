import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './Emergency.dart';
import './First_aid.dart';
import './Tracking.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    EmergencyPage(),
    TrackingPage(),
    First_aidPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ambulance Tracking',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ambulance Tracking"),
          actions: <Widget>[
            new IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: _accountCircle,
            ),
          ],
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
             _selectedPage = index; 
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_alert), title: Text('Emergency')),
            BottomNavigationBarItem(
                icon: Icon(Icons.traffic), title: Text('Tracking')),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), title: Text('First aid'))
          ],
          fixedColor: Colors.deepOrange,
        ),
      ),
    );
  }
  void _accountCircle(){
    
  }
}