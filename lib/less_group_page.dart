import 'package:flutter/material.dart';

class StateFulGroup extends StatefulWidget {
  @override
  LessGroupPage createState() => LessGroupPage();
}

class LessGroupPage extends  State<StateFulGroup>  {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: "StatelessWidget 基础组件",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("StatelessWidget 标题"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(Icons.home, color: Colors.blue),
                  title: Text("首页")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(Icons.list, color: Colors.blue),
                  title: Text("列表")),
            ]),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Text(
                "I am Text",
                style: textStyle,
              ),
              Icon(
                Icons.android,
                size: 50,
                color: Colors.red,
              ),
              CloseButton(),
              BackButton(),
              Chip(
                label: Text("基本组件"),
                avatar: Icon(Icons.phone),
              ),
              Divider(
                height: 10,
                indent: 10,
                color: Colors.orange,
              ),
              Card(
                color: Colors.blue,
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "imooc",
                    style: textStyle,
                  ),
                ),
              ),
              AlertDialog(
                title: Text("pan ta"),
                content: Text("憨憨"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
