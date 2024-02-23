import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:practice_20/screen/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("This is  first page"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(SecondPage(),
                        curve: Curves.easeOutBack,
                        duration: Duration(seconds: 5),
                        fullscreenDialog: true); //push
                  },
                  color: Colors.amber,
                  child: Center(child: Text("Go to page 2")),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.snackbar(
                      "Your Password Already save",
                      "Please login",
                      colorText: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 3),
                      icon: Icon(Icons.password),
                    );
                    //push
                  },
                  color: Colors.amber,
                  child: Center(child: Text(" SnakeBar")),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.black,
                      title: "Opi",
                      backgroundColor: Colors.pink,
                      cancel: InkWell(
                        onTap: () {},
                        child: Text("Cancel"),
                      ),
                      confirm: InkWell(
                        onTap: () {
                          ;
                        },
                        child: Text("Confirm"),
                      ),
                      content: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0)),
                        height: 300,
                        width: 310,
                        //color: Colors.teal,
                        child: Text(
                          "In publishing and graphic design, opi is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Opi may be used as a placeholder before the final copy is available.",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                  color: Colors.amber,
                  child: Center(child: Text("DilogBox")),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Title(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          color: Colors.white,
                          width: 400,
                          child: Center(
                            child: Text(
                              "This is Bottom shirt ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        color: Colors.red,
                      ),

                      shape: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.all(30.0),
                      //   // height: 300,
                      //   // width: double.infinity,
                      //   color: Colors.green,
                      //   child: Center(
                      //       child: Text(
                      //     "This is Bottom Shirt",
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.bold),
                      //   )),
                      //   // decoration: BoxDecoration(
                      //   //     borderRadius: BorderRadius.circular(20.0)),
                      // ),
                    );
                    //push
                  },
                  color: Colors.amber,
                  child: Center(child: Text("Bottom Sheet")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
