import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:practice_20/controller/home_Controller.dart';
import 'package:practice_20/screen/third_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  HomePageController homePageCotroller = Get.put(HomePageController());
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomePageController>(builder: (controller) {
              return Text("Value is ${homePageCotroller.count}");
            }),
            Center(child: Text(" ${homePageCotroller.count}")),
            MaterialButton(
              onPressed: () {
                homePageCotroller.increment();
              },
              child: Text(" Increment"),
            ),
            MaterialButton(
              onPressed: () {
                homePageCotroller.decrement();
              },
              child: Text("Decrement"),
            )
          ],
        ),
      ),
    );
  }
}
