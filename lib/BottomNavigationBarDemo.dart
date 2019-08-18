import 'package:flutter/material.dart';

import 'RouteTest.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavigationBarPage(),
    );
  }
}

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarPage();
  }
}

class _BottomNavigationBarPage extends State<BottomNavigationBarPage> {
  int _selectIndex = 0;
  final _widgetOptions = [
    Text("index 0 : 信息"),
    Text("index 1 : 通讯录"),
    Text("index 2 : 发现"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBarPage"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text("信息")),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text("通讯录")),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("发现")),
        ],
        currentIndex: _selectIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
