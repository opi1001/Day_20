import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:practice_20/screen/fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("3rd Page"),
      ),
      body: Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(FourthPage());
              },
              color: Colors.amber,
              child: Center(child: Text("Go to page 4")),
            ),
            MaterialButton(
              onPressed: () {
                Get.offAll(FourthPage());
              },
              color: Colors.amber,
              child: Center(child: Text("Back to page 2")),
            ),
          ],
        ),
      ),
    );
  }
}
