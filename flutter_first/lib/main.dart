import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { //main 스레드는 runApp 실행 후 종료
  runApp(FirstApp()); // 비동기 ( 이벤트 루프에 등록됨)
}

//저장만 하면 화면이 리로드 , 핫 리로드
class FirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      //AndroidApp을 만들겠다
      //iOS => CupertinoApp()
      home: SafeArea(
        child: Scaffold( 
          //기본구조를 들고있다
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("First App"),
            leading: Icon(Icons.menu),
          ),
          body: Text("Hello"),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("버튼 클릭됨");
            },
            child: Text("button"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  label:"hello",
                  icon: Icon(Icons.access_alarm_rounded,
              )),
              BottomNavigationBarItem(
                  label:"hello",
                  icon: Icon(Icons.access_alarm_rounded,
                  ))

            ],
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}