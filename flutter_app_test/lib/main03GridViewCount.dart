import 'package:flutter/material.dart';
import 'package:flutter_app_test/res/data/listData.dart';

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
  List<Widget> _getListDat() {
    // List<Widget> list = new List();
    // for (var i = 0; i < 9; i++) {
    //   list.add(Container(
    //     alignment: Alignment.center,
    //     color: Colors.blue,
    //     child: Text(
    //       "这是第$i条数据",
    //       style: TextStyle(color: Colors.red, fontSize: 20),
    //     ),
    //   ));
    // }
    // return list;
    var templeList = listData.map((value) {
      return Container(
        padding: EdgeInsets.all(5),
        child: Column(
          //Column 与 ListVIew 的区别： 表格用Column
          children: <Widget>[
            Image.network(value["imgeUrl"]),
            SizedBox(
              height: 10, //设置组件之间间隔
            ),
            Text(
              value["title"],
              style: TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
          color: Color.fromRGBO(233, 234, 350, 0.9),
          width: 1,
        )),
      );
    });
    return templeList
        .toList(); //一定要使用 .toList(),  因为templiList的格式为('xxx','xxxx')数组形式
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(20),
      child: GridView.count(
        //*********************************************************GridView.count 实现静态网格布局 */
        crossAxisCount: 2, // 列数
        crossAxisSpacing: 20.0, // 水平子 Widget 左右距离
        mainAxisSpacing: 20.0, //上下距离
        padding: EdgeInsets.all(10),
        children: this._getListDat(),
        // childAspectRatio: 0.7, //宽度和高度的比例   //设置 height: 300  没用
      ),
    );
  }
}
