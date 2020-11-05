import 'package:flutter/material.dart';

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 상단 debug 띠 없애기 위한 코드
      title: "BBANTO Test",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("BBANTO"),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0, // appBar 그림자 없애는 방법
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 가로 정렬
          children: [
            Center(
              child: CircleAvatar(
                // AssetsImage 에 이미지를 넣기 위해선 assets 이란 폴더를 만들고, 안에 파일을 넣는다.
                // 그리고 pubspec.yaml 에서 assets 관련 주석을 제거하고 위 코드와 라인을 맞춘다.(라인을 맞추지 않을 경우 에러 발생)
                // 주석을 제거한 후 assets 폴더 내 이미지 경로를 작성한다.
                backgroundImage: AssetImage("assets/giphy.gif"),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            SizedBox(
              // Text 사이 간격을 주기 위함
              height: 10.0,
            ),
            Text(
              "BBRATO",
              style: TextStyle(color: Colors.white, letterSpacing: 3.0, fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),

            Text(
              "BBRATO POWER LEVEL",
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "13",
              style: TextStyle(color: Colors.white, letterSpacing: 0.0, fontSize: 25.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text("using light saber", style: TextStyle(fontSize: 16.0, letterSpacing: 1.5))
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text("face hero tattoo", style: TextStyle(fontSize: 16.0, letterSpacing: 1.5))
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text("fire flames", style: TextStyle(fontSize: 16.0, letterSpacing: 1.5))
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/image1.jpg"),
                radius: 60,
              ),
            )
          ],
        ),
      ),
    );
  }
}
