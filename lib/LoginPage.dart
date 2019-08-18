import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

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
    return MaterialApp(
      title: "表单测试",
      home: Scaffold(
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
      ),
    );
  }
}
