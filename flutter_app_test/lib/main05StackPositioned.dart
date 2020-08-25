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
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 400,
        width: 300,
        color: Colors.grey,
        child: Stack(
          //** ******************************相当于浮动   positon:absolute */
          children: <Widget>[
            Align(
              //** ******************************Align */
              alignment: Alignment(-1, -1),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.red,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.save,
                size: 30,
                color: Colors.black,
              ),
            ),
            Positioned(
              //** ******************************Positioned */
              bottom: 20, right: 40,
              child: Icon(
                Icons.security,
                size: 30,
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}
