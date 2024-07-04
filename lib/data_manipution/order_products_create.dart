import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

Future<String?> createOrderProducts({
  required String orderItemCount,
  required String orderID,
  required String productID,
  required String status,
}) async {
  try {
    final request = GraphQLRequest<String>(
      document: '''
        mutation CreateOrderProducts(\$input: CreateOrderProductsInput!) {
          createOrderProducts(input: \$input) {
            id
            order_item_count
            orderID
            productID
            status
          }
        }
      ''',
      variables: {
        "input": {
          "order_item_count": orderItemCount,
          "orderID": orderID,
          "productID": productID,
          "status": status,
        }
      },
    );

    final response = await Amplify.API.mutate(request: request).response;
    print('OrderProducts created: ${response.data}');

    final newOrderProductsID = response.data?.substring(25, 61);
    print("New OrderProducts ID is " + newOrderProductsID!);
    return newOrderProductsID;

  } catch (e) {
    print('An error occurred while creating the OrderProducts: $e');
    return null;
  }
}
