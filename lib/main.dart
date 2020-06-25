import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ),//Text
        ),//Center
        backgroundColor: Colors.blue[900],
      ),
      body: AppPage(),
      ),
  ));
}

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  
  int ImageNum = Random().nextInt(5) + 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ImageNum = Random().nextInt(5) + 1;
          });
        },
       child: Container(
        child: Image.asset('images/ball$ImageNum.png'),
      ),
      ),
    );
  }
}






