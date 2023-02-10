import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$a"),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                a++;
              });
            },
            child: Icon(Icons.add),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a--;
              });
            },
            child: Icon(Icons.minimize),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a=a*2;
              });
            }, child: Icon(Icons.two_k),

          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a=a * 3;

              });
            },
            child: Icon(Icons.three_k),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
               a= a * 4;
              });
            },
            child: Icon(Icons.four_k),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              a++;
            });
          },
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
