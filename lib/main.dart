import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
          itemCount: 64,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8) ,
          itemBuilder: (BuildContext context,int ind){
          return Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              height: 100,width: 100,
              color: ind%2==0?  Color(0XffF0D9B5):Color(0xffB58863),
            ),
          );
          }
          ),
      ),
    );
  }
}