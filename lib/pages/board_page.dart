import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/circle_button.dart';
import 'package:ui/components/normal_text.dart';
import 'package:ui/components/title_text.dart';

import '../data_manipution/product_list.dart';
import '../data_manipution/product_manipulation.dart';
import '../models/Product.dart';
import 'main_page.dart';

class BoardPage extends StatelessWidget {



  BoardPage({super.key});
  BuildContext ?myContext;

  @override
  Widget build(myContext) {
    //MainPage.getProductObject();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Center(
              child: Image(
                alignment: Alignment.center,
                height: 300,
                image: AssetImage('assets/images/cube.png'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            titleText(
                yourTitle: "welcome to your "
                    "comfort market zone",
                fontSize: 30,
              align: TextAlign.center
            ),
            SizedBox(
              height: 30,
            ),

            normalText(yourTitle: "We Delightly Want The Technology To Serve You",
                fontSize: 25),
            SizedBox(
              height: 40,
            ),

            GestureDetector(
              child: circleButton(
                  buttonText: "start",
                  fontSize: 20,
                  ),
              onTap:() async {
                MainPage.getProductObject();
                //await Future.delayed(Duration(seconds: 2));
                Navigator.push(myContext!, MaterialPageRoute(builder: (context) => MainPage(),));

                },
            )
          ],
        ),
      ),
    );
  }

}
