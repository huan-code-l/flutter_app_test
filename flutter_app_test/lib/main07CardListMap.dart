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
  //遍历数组集合
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Card(
        //listView 无法再嵌套 listView
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 8,
              child: Image.network(
                value["imgeUrl"],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(value[
                    "imgeUrl"]), //**   ********** CircleAvatar 专门处理圆形图片   与上面的比较 ClipOval：需要设置宽高  */
              ),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
              //subtitle: Text(value["description"].overflow: TextOverflow.ellipsis), //如果文本较长，需要截取隐藏多余文本并添加 ...    ********
              //subtitle: Text(value["description"].overflow: TextOverflow.ellipsis , maxLines:2), //  还可以设置成两行 **********************
            ),
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: this._getListData(),
      ),
    );
  }
}
