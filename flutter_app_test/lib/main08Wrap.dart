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

/**
 * Wrap组件：可以实现流布局，单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Column表现几乎一致。但Row和Column都是单行单列，
 * wrap则突破了这个限制，mainAxis上空间不足时，则向crossAxis上去扩展显示。
 * 理解为空间不足时换行显示。
 */
class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Wrap(
        spacing: 5, //主轴方向上的间距
        runSpacing: 10, //纵轴方向上的间距
        // direction: Axis.vertical, //纵轴竖着排列
        // alignment: WrapAlignment.start, //左对齐 /end右对齐。。。 //建议用 spacing /runSpacing
        // runAlignment: WrapAlignment.end, //整体置于当前container的底部
        children: <Widget>[
          MyButton("第一集"),
          MyButton("第二集"),
          MyButton("第dsf一集"),
          MyButton("第二集"),
          MyButton("第一dsf集"),
          MyButton("第二集"),
          MyButton("第sdfsadfsd一集"),
          MyButton("第二集"),
          MyButton("第sdfs一集"),
          MyButton("第二集"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
