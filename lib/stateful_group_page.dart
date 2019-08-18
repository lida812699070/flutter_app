import 'package:flutter/material.dart';

import 'less_group_page.dart';
import 'main.dart';

void main() => runApp(StateFulGroup());

class StateFulGroup extends StatefulWidget {
  @override
  _StateFulGroupState createState() => _StateFulGroupState();
}

class _StateFulGroupState extends State<StateFulGroup> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "less": (BuildContext context) => MyApp()
      },
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
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text("点击"),
        ),
        body: _currentIndex == 0
            ? RefreshIndicator(
                onRefresh: handleRefresh,
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                              "https://www.baidu.com/img/bd_logo1.png?qua=high&where=super",
                              width: 100,
                              height: 100),
                          TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                hintText: "请输入",
                                hintStyle: TextStyle(fontSize: 5)),
                          ),
                          Container(
                            height: 100,
                            margin: EdgeInsets.all(10),
                            decoration:
                                BoxDecoration(color: Colors.lightBlueAccent),
                            child: PhysicalModel(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(6),
                              clipBehavior: Clip.antiAlias,
                              child: PageView(
                                children: <Widget>[
                                  _item('Page1', Colors.lightBlueAccent),
                                  _item('Page2', Colors.green),
                                  _item('Page3', Colors.red),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent),
                                child: Text("宽度撑满"),
                              )
                            ],
                          ),
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
                    )
                  ],
                ),
              )
            : Text("haha"),
      ),
    );
  }

  Future<Null> handleRefresh() async {
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }

  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}
