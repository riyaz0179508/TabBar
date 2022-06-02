import 'package:flutter/material.dart';
import 'package:tabbar_view/page_one.dart';
import 'package:tabbar_view/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(child: Text("Favorite"),),
              Tab(child: Text("My Order"),)
            ]),
          ),
          body: TabBarView(children: [
            PageOne(),
            PageTwo()
          ]),
        ),
      ),
    );
  }
}
