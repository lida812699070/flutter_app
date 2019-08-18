import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  var list = ["1", "2", "3", "4", "5", "6"];
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
              style:
                  new TextStyle(color: const Color(0xffff00ff), fontSize: 18,fontStyle: FontStyle.italic,decorationStyle: TextDecorationStyle.dashed,decoration: TextDecoration.underline,decorationColor: const Color(0xff229966)),
            ),
          ),
        ),
        body: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                print("sss");
              },
              child: new Text("sssss"),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 28,
                  width: 68,
                  margin: EdgeInsets.only(left: 24, top: 12, bottom: 8),
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14)),
                      gradient: const LinearGradient(
                          colors: [Colors.amberAccent, Colors.red])),
                  child: Text(
                    "分享达人",
                    style: new TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                Container(
                  height: 28,
                  width: 240,
                  margin: EdgeInsets.only(top: 12, bottom: 8),
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(0xff, 0x4b, 0x3b, 0x31),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(14),
                        topRight: Radius.circular(14)),
                  ),
                  child: Text(
                    "分享达人",
                    style: new TextStyle(fontSize: 13, color: Colors.white),
                  ),
                )
              ],
            ),
            Expanded(
              child: new ListView.builder(
//                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    margin:
                        EdgeInsets.only(left: 12, top: 6, right: 12, bottom: 6),
                    child: Row(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.topRight,
                          children: <Widget>[
                            //主图片
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 130,
                              height: 130,
                              child: ClipRRect(
                                child: new Image.network(
                                  "https://pics1.baidu.com/feed/c2cec3fdfc0392453c540ecd444de2c77f1e256a.jpeg?token=c865e79cb11d8ae76f39c5234b70b10e&s=8EA04186623AB3D456EDD8AF0300700A",
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                            ),
                            Positioned(
                              top: 110,
                              left: 30,
                              child: Container(
                                width: 98,
                                height: 20,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(14),
                                        bottomLeft: Radius.circular(14)),
                                    gradient: const LinearGradient(colors: [
                                      Colors.amberAccent,
                                      Colors.red
                                    ])),
                              ),
                            ),
                            //小圆形图
                            Positioned(
                              top: 110,
                              left: 20,
                              child: Container(
                                width: 25,
                                height: 25,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: ClipOval(
                                  child: new Image.network(
                                    "https://pics1.baidu.com/feed/c2cec3fdfc0392453c540ecd444de2c77f1e256a.jpeg?token=c865e79cb11d8ae76f39c5234b70b10e&s=8EA04186623AB3D456EDD8AF0300700A",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
