import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/normal_text.dart';
import '../components/product_builder.dart';
import '../components/title_text.dart';
import 'board_page.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //get productsList => null;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: titleText(
              yourTitle: "News & Community",
              fontSize: 20,
              align: TextAlign.left,
            ),
          ),
        ),
        SizedBox(
          height: 1,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildNews('assets/images/news_galaxy_AI.png'),
              _buildNews('assets/images/news_applewatch.png'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: titleText(
              yourTitle: "Products",
              fontSize: 25,
              align: TextAlign.left,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(

            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 15,),
            itemCount: MainPage.productsList.length,
            itemBuilder: (context, index) {
              return ProductBuilder(MainPage.productsList[index]);
            },

          ),
        ),
      ],
    );
  }

  Widget _buildNews(String imagePath) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Image.asset(
        imagePath,
        width: 250,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }


}

_addToFavourites() {}
_addToCart() {}
_showDescription({
  required BuildContext context,
  String imagePath = 'assets/images/no_image.png',
}) {
  showDialog(
    context: context,
    builder: (context) => productDescription(imagePath),
  );
}

Widget productDescription(String imagePath) {
  return Container(
    child: CircleAvatar(),
    decoration: BoxDecoration(
      border: Border(
        left: BorderSide(),
      ),
    ),
  );
}


