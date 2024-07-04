
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/app_bar.dart';
import 'package:ui/components/normal_text.dart';
import 'package:ui/components/title_text.dart';
import 'package:ui/pages/cart_page.dart';
import 'package:ui/pages/favourite_page.dart';
import 'package:ui/pages/home_page.dart';

import '../data_manipution/product_list.dart';
import '../data_manipution/product_manipulation.dart';
import '../models/Product.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static List<Product> productsList=[];
  @override
  State<MainPage> createState() => _MainPageState();
  static getProductObject() async{
    print("hey i am going to get the data from data base");
    for(int i=0;i<productIdList.length;i++)
    {
      print("Now i am getting product $i");
      Future<Product?> currentProductFuture=queryItem(Product(id: productIdList[i], productName: ''));
      Product? currentProduct=await currentProductFuture;
      print("product "+i.toString()+" is "+currentProduct.toString());
      MainPage.productsList.add(currentProduct!);
    }
    //print("product list is"+MainPage.productsList.toString());
  }
}

class _MainPageState extends State<MainPage> {
  int index=0;
  List<Widget> currentPage=[HomePage(),FavouritePage(),CartPage()];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: currentPage[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.home
              ),
              label: "Home",
              tooltip: "exlplore tour needs"

          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline_outlined,
              ),
              label: "favourites",
              tooltip: "add your favourite items"

          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "Cart",
              tooltip: "let your needs to be delivered"

          )
        ],
        currentIndex:index,
        onTap: (value) {
          setState(() {
            index=value;
            print(index);
          });
        },
      ),
    );
  }

}
