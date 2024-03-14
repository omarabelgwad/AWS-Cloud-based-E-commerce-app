import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:ui/models/ModelProvider.dart';


Future<void> createProductFunctionDoc() async {
  try {
    final product = Product(id: "111",
        productCategory: "mobile",
        productDescription: "woderful",
        ProductLefts: 3,
        productName: "samsung"
    );
    final request = ModelMutations.create(product);
    final response = await Amplify.API.mutate(request: request).response;

    final createdProduct = response.data;
    if (createdProduct == null) {
      safePrint('errors: ${response.errors}');
      return;
    }
    safePrint('Mutation result: ${createdProduct.productName}');
  } on ApiException catch (e) {
    safePrint('Mutation failed: $e');
  }
}

Future<Product?> queryItem(Product queriedProduct) async {
  try {
    final request = ModelQueries.get(
      Product.classType,
      queriedProduct.modelIdentifier,
    );

    final response = await Amplify.API.query(request: request).response;

    final product = response.data;
    if (product == null) {
      safePrint('errors: ${response.errors}');
    }
    print(product);
    return product;
  } on ApiException catch (e) {
    safePrint('Query failed: $e');
    return null;
  }
}

Future<void> deleteProducById() async {
  final request = ModelMutations.deleteById(
    Product.classType,
    ProductModelIdentifier(id: '111'),
  );
  final response = await Amplify.API.mutate(request: request).response;
  safePrint('Response: $response');
}