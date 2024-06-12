import 'package:flutter/material.dart';

import '../components/normal_text.dart';
import '../components/product_builder.dart';
import '../components/title_text.dart';
import '../models/Product.dart';
class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    if(ProductBuilder.favouriteProductsList.isEmpty)
      {
        return Center(child: titleText(yourTitle: 'You have No Favourites ', fontSize: 22));
      }
    else{
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: titleText(
                yourTitle: "Favorites Products",
                fontSize: 25,
                align: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
              itemCount: ProductBuilder.favouriteProductsList.length,
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
                              ProductBuilder.favouriteProductsList[index].productImagePath.toString(),
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
                              yourTitle: ProductBuilder.favouriteProductsList[index].productName.toString(),
                              fontSize: 22),
                          normalText(
                              yourTitle:
                              ProductBuilder.favouriteProductsList[index].productCategory.toString(),
                              fontSize: 15),
                          Row(children: [
                            titleText(yourTitle: ProductBuilder.favouriteProductsList[index].productPrice.toString(), fontSize: 17),
                            IconButton(
                              icon: Icon(
                                size: 20,
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              onPressed: () {

                                setState(() {
                                  _removeFromFavourites(ProductBuilder.favouriteProductsList[index]);
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
      );
    }
  }
}
_removeFromFavourites(Product removedProduct) {
  ProductBuilder.favouriteProductsList.remove(removedProduct);
  print("product "+removedProduct.productName.toString()+" is removed from Favourites");

}
