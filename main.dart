import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 시작 페이지로 FirstPage 위젯을 사용
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            // 버튼을 눌렀을 때 Navigator 를 사용해 페이지 이동 처리
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
            _showMyDialog(context);
          },
        ),
      ),
    );
  }

  _showMyDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('팝업 창 제목'),
            content: Text('팝업 창 내용 입니다'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('닫기')),
            ],
          );
        });
  }
} // end of FirstPage

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Back to First Page'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}