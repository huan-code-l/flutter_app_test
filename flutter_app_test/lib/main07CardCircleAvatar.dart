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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Card(
            //listView 无法再嵌套 listView
            margin: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 8,
                  child: Image.network(
                    listData[0]["imgeUrl"],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      listData[0]["imgeUrl"],
                      fit: BoxFit.cover,
                      height: 60,
                      width: 50,
                    ),
                  ),
                  title: Text(listData[0]["title"]),
                  subtitle: Text(listData[0]["author"]),
                ),
              ],
            ),
          ),
          Card(
            //listView 无法再嵌套 listView
            margin: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 8,
                  child: Image.network(
                    listData[0]["imgeUrl"],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(listData[0][
                        "imgeUrl"]), //**   ********** CircleAvatar 专门处理圆形图片   与上面的比较 ClipOval：需要设置宽高  */
                  ),
                  title: Text(listData[0]["title"]),
                  subtitle: Text(listData[0]["author"]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
