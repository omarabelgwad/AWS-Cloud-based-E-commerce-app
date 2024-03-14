import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/title_text.dart';

import '../models/Product.dart';
import 'normal_text.dart';
class ProductBuilder extends StatelessWidget {
  Product returnedObject;
  ProductBuilder(this.returnedObject);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Card(
            margin: EdgeInsets.all(3),
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: Stack(
              children: [
                GestureDetector(
                  child: Image.asset(
                    returnedObject.productImagePath.toString(),
                    fit: BoxFit.scaleDown,
                    height: 80,
                    width: 80,
                  ),
                  onTap: () => CircleAvatar(),
                ),
                Positioned(
                  left: 130,
                  bottom: 105,
                  child: IconButton(
                    icon: Icon(
                      size: 30,
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    onPressed: () => _addToFavourites(),
                  ),
                ),
                Positioned(
                  left: 130,
                  bottom: -5,
                  child: IconButton(
                    icon: Icon(
                      size: 30,
                      Icons.add_circle_outline_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () => _addToCart(),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(yourTitle: returnedObject.productName.toString(), fontSize: 22),
              normalText(yourTitle: returnedObject.productCategory.toString(), fontSize: 15),
              SizedBox(height: 6,),
              Row(
                children: [
                  titleText(
                      yourTitle: "69000 EGP", fontSize: 17),

                  SizedBox(width: 20,),
                  titleText(
                      yourTitle: returnedObject.ProductLefts.toString() + " left",
                      fontSize: 15),
                ],
              ),
              SizedBox(height: 6,),
              titleText(yourTitle: "Desciption: " , fontSize: 15),

              Container(
                width: 250,
                child: Text(
                  returnedObject.productDescription.toString(),
                  overflow: TextOverflow.clip,
                  softWrap: true,

                  maxLines: 1,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                    wordSpacing:0,
                    letterSpacing: 0,
                  ),

                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
_addToFavourites() {}
_addToCart() {}