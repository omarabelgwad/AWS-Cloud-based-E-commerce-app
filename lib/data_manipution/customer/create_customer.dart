import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';

Future<String?> createCustomer(
    {
      required String id,
      required String first_name,
      required String last_name,
      required String email,
    }
    ) async {
  try {
    final request = GraphQLRequest<String>(
      document: '''
        mutation CreateCustomer(\$input: CreateCustomerInput!) {
          createCustomer(input: \$input) {
            id
            customer_id
            first_name
            last_name
            email
          }
        }
      ''',
      variables: {
        "input": {
          "customer_id": id,
          "first_name": first_name,
          "last_name": last_name,
          "email": email,
        }
      },
    );

    final response = await Amplify.API.mutate(request: request).response;
    print('Customer created: ${response.data}');
   // print("$id");
    final newCustomerID =await response.data?.substring(25, 61);
    print("new customer id is"+newCustomerID!);
    return newCustomerID;

  } catch (e) {
    print('An error occurred while creating the customer: $e');
  }
}
