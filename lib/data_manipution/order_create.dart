import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';

Future<dynamic> createOrder({
  required dynamic customerID,
  required String orderID,
  required String status,
}) async {
  try {
    final request = GraphQLRequest<String>(
      document: '''
        mutation CreateOrder(\$input: CreateOrderInput!) {
          createOrder(input: \$input) {
            id
            order_date
            order_id
            customerID
            status
          }
        }
      ''',
      variables: {
        "input": {
          "order_date": "2024-06-20T15:02:00.000Z",
          "order_id": orderID,
          "customerID": customerID,
          "status": status
        }
      },
    );
    print("hello");
    final response = await Amplify.API.mutate(request: request).response;
    print("Ordered product: " + response.data.toString());

    final newOrderID = response.data?.substring(22, 68);
    print("New order ID is " + newOrderID!);
    return newOrderID;


  } catch (e) {
    print('An error occurred while creating the order: $e');
  }
}
