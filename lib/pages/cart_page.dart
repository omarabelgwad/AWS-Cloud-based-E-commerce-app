import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/normal_text.dart';
import '../components/product_builder.dart';
import '../components/title_text.dart';
import '../models/Product.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, Widget});


  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    if (ProductBuilder.cartProductsList.isEmpty) {
      return Center(
          child: titleText(yourTitle: 'Your Cart is Empty ', fontSize: 22));
    }
    else {
      return Stack(
        children: [ Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: titleText(
                  yourTitle: "Cart Products",
                  fontSize: 25,
                  align: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    SizedBox(
                      height: 15,
                    ),
                itemCount: ProductBuilder.cartProductsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Card(
                            margin: EdgeInsets.all(3),
                            clipBehavior: Clip.antiAlias,
                            elevation: 5,
                            child: GestureDetector(
                              child: Image.asset(
                                ProductBuilder.cartProductsList[index]
                                    .productImagePath.toString(),
                                fit: BoxFit.scaleDown,
                                height: 80,
                                width: 80,
                              ),
                              onTap: () => CircleAvatar(),
                            ),
                          ),

                        ]),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            titleText(
                                yourTitle: ProductBuilder.cartProductsList[index]
                                    .productName.toString(),
                                fontSize: 22),
                            normalText(
                                yourTitle:
                                ProductBuilder.cartProductsList[index]
                                    .productCategory.toString(),
                                fontSize: 15),
                            Row(children: [
                              titleText(yourTitle: ProductBuilder
                                  .cartProductsList[index].productPrice
                                  .toString(), fontSize: 17),
                              IconButton(
                                icon: Icon(
                                  size: 20,
                                  Icons.restore_from_trash_outlined,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _removeFromCart(
                                        ProductBuilder.cartProductsList[index]);
                                  });
                                },
                              )
                            ],)


                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 10,
           left: 120,
           child:  GestureDetector(

             child: Container(
               width: 150,
               height: 60,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 color: Colors.orange,
                 borderRadius: BorderRadius.circular(30),
               ),
               child:Text(
                 "Place Order",
                 textAlign: TextAlign.center,
                 style: GoogleFonts.aBeeZee(
                     fontSize: 20,
                     wordSpacing:0,
                     letterSpacing: 0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                 ),
               ),
             ),
           ) ,
        )
        ]

      );
    }
  }
}
_removeFromCart(Product removedProduct) {
  ProductBuilder.cartProductsList.remove(removedProduct);
  print("product "+removedProduct.productName.toString()+" is removed from cart");

}