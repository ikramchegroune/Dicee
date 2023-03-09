import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber =1;
  int rightdicenumber =1;
  void changeDice(){
    leftdicenumber=Random().nextInt(6) +1;
    rightdicenumber=Random().nextInt(6) +1;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:[
        Expanded(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:TextButton(
            onPressed: () {
              setState(() {
                changeDice();
              });
            
          },
            child: Image.asset('images/dice$leftdicenumber.png'),
            ),
        ),
        ),
         Expanded(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextButton(
            onPressed: () {
              setState(() {
                changeDice(); 
              });

             
           },
            child: Image.asset('images/dice$rightdicenumber.png')),
         ),
        ),



      ],
      ),
    );
  }
}

