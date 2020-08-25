import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/**
 * StatelessWidge 无状态组件，状态不可变的widge
 * StatefulWidge  有状态组件，持有的状态可能在widge生命周期改变，通俗的讲：如果我们想改变页面中的数据的话，这个时候就需要StatefulWidge
 */
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
          body: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 1;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Chip(label: Text("${this.countNum}")),
          RaisedButton(
            onPressed: () {
              setState(() {
                //只有有状态组件里面才有  //修改数据，必须使用setState
                this.countNum++;
              });
            },
            child: Text("按钮"),
          ),
          SizedBox(height: 10),
          Column(
            children: this.list.map((value) {
              return ListTile(
                title: Text(value),
              );
            }).toList(),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                //只有有状态组件里面才有  //修改数据，必须使用setState
                this.list.add("value");
              });
            },
            child: Text("按钮"),
          ),
        ],
      ),
    );
  }
}
