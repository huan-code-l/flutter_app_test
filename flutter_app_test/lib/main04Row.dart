import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter demo"),
          ),
          body: MyHomeContent(),
        ));
  }
}

class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        //** ****************************************************************************************与 column 相比较 */
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, //center/start/end/spaceAround/spaceBetween
        children: <Widget>[
          IconContainer(Icons.home, color: Colors.blue),
          IconContainer(Icons.search, color: Colors.blue),
          IconContainer(Icons.select_all, color: Colors.blue)
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0; //可选参数，可以设置默认值
  Color color = Colors.red; //可选参数，可以设置默认值
  IconData icon;
  IconContainer(this.icon,
      {this.color, this.size}); //构造函数，    {color,size} 括起来为可选参数

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
