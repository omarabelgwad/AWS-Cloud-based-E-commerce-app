import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/title_text.dart';

import '../models/Product.dart';
import 'normal_text.dart';
class ProductBuilder extends StatelessWidget {

  Product returnedObject;
  ProductBuilder(this.returnedObject);
  static List<Product> cartProductsList=[];
  static List<Product> favouriteProductsList=[];
  static List<String> cartProductsIDs=[];
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [Card(
              margin: EdgeInsets.all(3),
              clipBehavior: Clip.antiAlias,
              elevation: 5,
              child: GestureDetector(
                child: Image.asset(
                  returnedObject.productImagePath.toString(),
                  fit: BoxFit.scaleDown,
                  height: 80,
                  width: 80,
                ),
                onTap: () => CircleAvatar(),
              ),
            ),

              Positioned(
                top: 50,
                left: 50,
                child: IconButton(
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      size: 20,
                      Icons.add_circle_outline_sharp,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => _addToCart(returnedObject),
                ),
              ),
            ]
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(yourTitle: returnedObject.productName.toString(), fontSize: 22),
              normalText(yourTitle: returnedObject.productCategory.toString(), fontSize: 15),

              Row(
                children: [
                  titleText(
                      yourTitle: returnedObject.productPrice.toString(), fontSize: 17),

                  SizedBox(width: 20,),
                  titleText(
                      yourTitle: returnedObject.ProductLefts.toString() + " left",
                      fontSize: 15),
                  SizedBox(width: 50,),
                  IconButton(
                    icon: Icon(
                      size: 20,
                      Icons.favorite,
                      color: Colors.grey,

                    ),

                    onPressed: () => _addToFavourites(returnedObject),
                  )
                ],
              ),

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
_addToFavourites(Product favProduct) {
  ProductBuilder.favouriteProductsList.add(favProduct);
  print("product "+favProduct.productName.toString()+" is added to favourites");

}
_addToCart(Product cartProduct) {
  ProductBuilder.cartProductsList.add(cartProduct);
  ProductBuilder.cartProductsIDs.add(cartProduct.id.substring(0,36));
  print("product "+cartProduct.productName.toString()+" is added to cart");
  print("ID id" +cartProduct.id.substring(0,36));
}
