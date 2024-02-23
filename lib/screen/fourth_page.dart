import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("This is fourth four Page"),
      ),
      body: Container(
        height: 500,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              color: Colors.amber,
              child: Center(child: Text("This page is end and go back ")),
            ),
          ],
        ),
      ),
    );
  }
}
