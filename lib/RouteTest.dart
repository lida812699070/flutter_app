import 'package:flutter/material.dart';

import 'BottomNavigationBarDemo.dart';

void main() {
  runApp(new RoutePage());
}

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
      title: "RouteDemo",
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
        '/login': (BuildContext context) => LoginPage(),
        '/BottomNavigationBarPage': (BuildContext context) =>
            BottomNavigationBarPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FirstPage",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: new Drawer(
        //New added

        child: new Text("sss"), //New added
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
            child: Text(
              "这是第一个页面1111111111111111111111111111111",
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/BottomNavigationBarPage");
            },
            child: Text(
              "这是第一个页面22222222222",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 120,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/BottomNavigationBarPage");
              },
              child: Text(
                "这是第一个页面22222222222",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SecondPage",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          child: Text(
            "这是第二个页面",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String username;
  String password;

  void login() {
    var loginForm = loginKey.currentState;
    if (loginForm.validate()) {
      loginForm.save();
      print("username: $username  password: $password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单Title"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
//                margin: EdgeInsets.only(top: 300),
              padding: EdgeInsets.all(12),
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    /**
                     * 用户名
                     */
                    TextFormField(
                      decoration: InputDecoration(labelText: "请输入用户名"),
                      onSaved: (value) {
                        username = value;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    /**
                     * 密码
                     */
                    TextFormField(
                      decoration: InputDecoration(labelText: "请输入密码名"),
                      //是否明文
                      obscureText: true,
                      validator: (value) {
                        return value.length < 6 ? "密码长度必须大于6位" : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                      onFieldSubmitted: (value) {},
                    )
                  ],
                ),
              ),
            ),
            /**
             * 登录按钮
             */
            SizedBox(
              width: 340,
              height: 42,
              child: RaisedButton(
                  onPressed: login,
                  child: Text(
                    "登录",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
