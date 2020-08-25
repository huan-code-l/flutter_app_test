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
  Widget _getListDat(context, index) {
    return Container(
      child: Column(
        //Column 与 ListVIew 的区别： 表格用Column

        children: <Widget>[
          Image.network(listData[index]["imgeUrl"]),
          SizedBox(
            height: 10, //设置组件之间间隔
          ),
          Text(
            listData[index]["title"],
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        //*********************************************************GridView.count 实现动态网格布局 */
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //SliverGridDelegateWithFixedCrossAxisCount常用，SliverGridDelegateWithFixedCrossAxisExent不常用
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0),
        itemCount: listData.length,
        itemBuilder: this._getListDat,
      ),
    );
  }
}
