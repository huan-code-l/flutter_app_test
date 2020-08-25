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
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home, color: Colors.blue),
          ),
          Container(
            width: 10,
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: IconContainer(Icons.search, color: Colors.blue),
          ),
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
