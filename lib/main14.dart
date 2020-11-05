import 'package:flutter/material.dart';

class MyApp14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHome14(),
    );
  }
}

class MyHome14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarTest"),
        centerTitle: true,
        elevation: 0.0,
        // 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
        leading: IconButton(
          icon: Icon(Icons.menu),
          // 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의
          onPressed: () {
            print("menu button is clicked");
          },
        ),
        // 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("Shopping Cart button is clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search button is clicked");
            },
          ),
        ],
      ),
    );
  }
}
