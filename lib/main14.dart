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

// MyHome14 라는 커스텀 위젯을 만듦.
class MyHome14 extends StatelessWidget {
  // BuildContext 란?
  // 1. build 함수는 Scaffold 라는 위젯을 return 하는데, 이 떄, 위젯 트리 상에서 어디에 위치하는 지에 대한 정보를 갖고 있는 context라는 것을 넣어 return 을 해준다는 의미.
  // 2. stateless 위젯이나 state 빌드 메서드에 의해서 리턴된 위젯의 부모가 된다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarTest"),
        centerTitle: true,
        elevation: 0.0,

        // 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   // 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의
        //   onPressed: () {
        //     print("menu button is clicked");
        //   },
        // ),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image1.jpg"),
                // backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image2.jpg"),
                  // backgroundColor: Colors.white,
                  // ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("assets/image2.jpg")
                )
              ],
              accountName: Text("Brabo"),
              accountEmail: Text("brabo@brabo.com"),
              onDetailsPressed: () {
                print("Arrow is clicked.");
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text("Home"),
              onTap: () {
                print("Home is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text("Setting"),
              onTap: () {
                print("Setting is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text("Q&A"),
              onTap: () {
                print("Q&A is clicked");
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
