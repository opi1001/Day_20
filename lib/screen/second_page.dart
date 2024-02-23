import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:practice_20/screen/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("This is second page"),
      ),
      body: Container(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(ThirdPage());
              },
              color: Colors.amber,
              child: Center(child: Text("Go to page 3")),
            ),
            MaterialButton(
              onPressed: () {
                Get.off(SecondPage());
              },
              color: Colors.amber,
              child: Center(child: Text("Back Go to one page")),
            ),
          ],
        ),
      ),
    );
  }
}
