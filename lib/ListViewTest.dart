import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  var list = ["1", "2", "3", "4", "5", "6","3", "4", "5", "6"];
  runApp(new MyApp(
    items: list,
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = '爆款素材';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
          backgroundColor: Color.fromARGB(0xff, 0xf0, 0xf2, 0xf5),
          appBar: new AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: new Text(
                title,
                style: new TextStyle(
                    color: const Color(0xffff00ff),
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    decorationStyle: TextDecorationStyle.dashed,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xff229966)),
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(items[index]),
                    onDismissed: (d){
                      items.removeAt(index);
                    },
                    child: new ListTile(
                      leading: new Icon(Icons.add),
                      title: Text("${items[index]}"),
                    ),
                  );
                }),
          )),
    );
  }
}
//ListView(
//scrollDirection: Axis.horizontal,
//children: <Widget>[
//Container(
//width: 160,
//color: Colors.blue,
//),
//Container(
//width: 160,
//color: Colors.red,
//),
//Container(
//width: 160,
//color: Colors.grey,
//child: Column(
//children: <Widget>[
//Text(
//"水平",
//)
//],
//),
//),
//],
//)
