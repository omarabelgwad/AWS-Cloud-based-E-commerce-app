import 'dart:math';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

import '../components/app_bar.dart';
import '../components/product_builder.dart';
import '../data_manipution/customer/create_customer.dart';
import '../data_manipution/order_create.dart';
import '../data_manipution/order_products_create.dart';

class PlaceOrder extends StatelessWidget {
  int customerId = 2;
  TextEditingController firstNameInput = new TextEditingController();
  TextEditingController lastNameInput = new TextEditingController();
  TextEditingController emailInput = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: firstNameInput,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.orange,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                    hintText: "first Name",
                    hintStyle: TextStyle(color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: lastNameInput,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.orange,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                    hintText: "Last Name",
                    hintStyle: TextStyle(color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailInput,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.orange,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.orange,
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              //createOrder();
              //Navigator.push(context!, MaterialPageRoute(builder: (context) => OrderCreate(),));
              final customerID = await createCustomer(
                id: Random().nextInt(50).toString(),
                first_name: firstNameInput.text,
                last_name: lastNameInput.text,
                email: emailInput.text,
              );

              if (customerID != null) {
                final orderID = await createOrder(
                  customerID: customerID,
                  orderID: Random().nextInt(50).toString(),
                  status: 'pending',
                );
                if (orderID != null) {
                 do
                  {
                    String currentProductID=ProductBuilder.cartProductsIDs.removeLast();
                    createOrderProducts(
                        orderID: orderID,
                        productID: currentProductID,
                      orderItemCount: 1.toString(),
                      status: "pending",

                    );
                  } while (ProductBuilder.cartProductsIDs.isNotEmpty);
                }
              }
            },
            child: Container(
              width: 150,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Place Order",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    wordSpacing: 0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
