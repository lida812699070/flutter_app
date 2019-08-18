import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(DialogApp());

class DialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("标题"),
        ),
        body: Center(
          child: CupertinoAlertDialog(
            title: Text("提示"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("是否要删除?"),
                  Text("删除后数据不可恢复?"),
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("取消"),
                onPressed: () {},
              ),
              CupertinoDialogAction(
                child: Text("确定"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
