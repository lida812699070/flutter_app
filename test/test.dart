// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

void main() {
  var a = 1;
  const a1 = 1;
  num b = 10;
  List<dynamic> list = List();
  list.add("11 $a");
  list.add("22");
  list.add(44);
  list.add("33");
  print(list);
}

class A extends B{

}
abstract class B{}
class C{}