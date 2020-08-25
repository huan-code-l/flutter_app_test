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
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.black,
                  child: Text(
                    "hello flutter",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10, //设置组件之间间隔
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 180,
                    child: Image.network(
                      listData[0]["imgeUrl"],
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 85,
                          child: Image.network(
                            listData[1]["imgeUrl"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10, //设置组件之间间隔
                        ),
                        Container(
                          height: 85,
                          child: Image.network(
                            listData[2]["imgeUrl"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
