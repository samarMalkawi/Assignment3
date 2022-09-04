// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(buttontest());
}

class buttontest extends StatelessWidget {
  const buttontest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(image: AssetImage("images/cat.webp")),
          RaisedButton(
              highlightColor: Colors.amber,
              color: Colors.yellow[200],
              child: Text(
                "do you love cats",
                style: TextStyle(color: Colors.brown, fontSize: 30),
              ),
              onLongPress: () => print("I dont love cats"),
              onPressed: () {
                print("I love cats");
              }),
          Image(image: AssetImage("images/dog.jpg")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.brown[100],
                  onPrimary: Colors.brown,
                  elevation: 20,
                  shadowColor: Colors.amber),
              onLongPress: (() => print("I dont love dog")),
              onPressed: () {
                print("I love dog");
              },
              child: Text("do you love dogs",style: TextStyle(fontSize: 30 , color: Colors.blue),)),
          Image(image: AssetImage("images/hamistar.jpeg")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green[100],
                  onPrimary: Colors.red[100],
                  elevation: 20,
                  shadowColor: Colors.green),
              onLongPress: (() => print("I dont love hamster")),
              onPressed: () {
                print("I love hamster");
              },
              child: Text("do you love hamsters",style: TextStyle(fontSize: 30 , color: Colors.green),)),
          Center(
            child: Row(
              children: [
              Card(
                  elevation: 30,
                  shadowColor: Colors.red[200],
                  child: Text(
                    "kitten",
                    style: TextStyle(fontSize: 30),
                  )),
              Card(
                elevation: 30,
                shadowColor: Colors.red[200],
                child: Text(
                  "puppy",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Card(
                elevation: 30,
                shadowColor: Colors.red[200],
                child: Text(
                  "hamster",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(height: 50,)
            ]),
          )
        ]),
      ),
    ));
  }
}
