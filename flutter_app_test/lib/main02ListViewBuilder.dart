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
  Widget _getListData(content, index) {
    //  _ 为私有方法（相当于private)
    return ListTile(
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
      leading: Image.network(listData[index]["imgeUrl"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: this._getListData, //此处调用方法不需要传参
      ),
    );
  }
}
