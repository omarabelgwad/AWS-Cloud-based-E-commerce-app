/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Product type in your schema. */
class Product extends amplify_core.Model {
  static const classType = const _ProductModelType();
  final String id;
  final String? _productName;
  final String? _productID;
  final String? _productPrice;
  final int? _ProductLefts;
  final String? _productCategory;
  final String? _productImagePath;
  final String? _productDescription;
  final List<OrderItem>? _orderedProductRelation;
  final List<Shelf>? _productShelfRelation;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ProductModelIdentifier get modelIdentifier {
      return ProductModelIdentifier(
        id: id
      );
  }
  
  String? get productName {
    return _productName;
  }
  
  String? get productID {
    return _productID;
  }
  
  String? get productPrice {
    return _productPrice;
  }
  
  int? get ProductLefts {
    return _ProductLefts;
  }
  
  String? get productCategory {
    return _productCategory;
  }
  
  String? get productImagePath {
    return _productImagePath;
  }
  
  String? get productDescription {
    return _productDescription;
  }
  
  List<OrderItem>? get orderedProductRelation {
    return _orderedProductRelation;
  }
  
  List<Shelf>? get productShelfRelation {
    return _productShelfRelation;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Product._internal({required this.id, productName, productID, productPrice, ProductLefts, productCategory, productImagePath, productDescription, orderedProductRelation, productShelfRelation, createdAt, updatedAt}): _productName = productName, _productID = productID, _productPrice = productPrice, _ProductLefts = ProductLefts, _productCategory = productCategory, _productImagePath = productImagePath, _productDescription = productDescription, _orderedProductRelation = orderedProductRelation, _productShelfRelation = productShelfRelation, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Product({String? id, String? productName, String? productID, String? productPrice, int? ProductLefts, String? productCategory, String? productImagePath, String? productDescription, List<OrderItem>? orderedProductRelation, List<Shelf>? productShelfRelation}) {
    return Product._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      productName: productName,
      productID: productID,
      productPrice: productPrice,
      ProductLefts: ProductLefts,
      productCategory: productCategory,
      productImagePath: productImagePath,
      productDescription: productDescription,
      orderedProductRelation: orderedProductRelation != null ? List<OrderItem>.unmodifiable(orderedProductRelation) : orderedProductRelation,
      productShelfRelation: productShelfRelation != null ? List<Shelf>.unmodifiable(productShelfRelation) : productShelfRelation);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
      id == other.id &&
      _productName == other._productName &&
      _productID == other._productID &&
      _productPrice == other._productPrice &&
      _ProductLefts == other._ProductLefts &&
      _productCategory == other._productCategory &&
      _productImagePath == other._productImagePath &&
      _productDescription == other._productDescription &&
      DeepCollectionEquality().equals(_orderedProductRelation, other._orderedProductRelation) &&
      DeepCollectionEquality().equals(_productShelfRelation, other._productShelfRelation);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Product {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("productName=" + "$_productName" + ", ");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("productPrice=" + "$_productPrice" + ", ");
    buffer.write("ProductLefts=" + (_ProductLefts != null ? _ProductLefts!.toString() : "null") + ", ");
    buffer.write("productCategory=" + "$_productCategory" + ", ");
    buffer.write("productImagePath=" + "$_productImagePath" + ", ");
    buffer.write("productDescription=" + "$_productDescription" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Product copyWith({String? productName, String? productID, String? productPrice, int? ProductLefts, String? productCategory, String? productImagePath, String? productDescription, List<OrderItem>? orderedProductRelation, List<Shelf>? productShelfRelation}) {
    return Product._internal(
      id: id,
      productName: productName ?? this.productName,
      productID: productID ?? this.productID,
      productPrice: productPrice ?? this.productPrice,
      ProductLefts: ProductLefts ?? this.ProductLefts,
      productCategory: productCategory ?? this.productCategory,
      productImagePath: productImagePath ?? this.productImagePath,
      productDescription: productDescription ?? this.productDescription,
      orderedProductRelation: orderedProductRelation ?? this.orderedProductRelation,
      productShelfRelation: productShelfRelation ?? this.productShelfRelation);
  }
  
  Product copyWithModelFieldValues({
    ModelFieldValue<String?>? productName,
    ModelFieldValue<String?>? productID,
    ModelFieldValue<String?>? productPrice,
    ModelFieldValue<int?>? ProductLefts,
    ModelFieldValue<String?>? productCategory,
    ModelFieldValue<String?>? productImagePath,
    ModelFieldValue<String?>? productDescription,
    ModelFieldValue<List<OrderItem>?>? orderedProductRelation,
    ModelFieldValue<List<Shelf>?>? productShelfRelation
  }) {
    return Product._internal(
      id: id,
      productName: productName == null ? this.productName : productName.value,
      productID: productID == null ? this.productID : productID.value,
      productPrice: productPrice == null ? this.productPrice : productPrice.value,
      ProductLefts: ProductLefts == null ? this.ProductLefts : ProductLefts.value,
      productCategory: productCategory == null ? this.productCategory : productCategory.value,
      productImagePath: productImagePath == null ? this.productImagePath : productImagePath.value,
      productDescription: productDescription == null ? this.productDescription : productDescription.value,
      orderedProductRelation: orderedProductRelation == null ? this.orderedProductRelation : orderedProductRelation.value,
      productShelfRelation: productShelfRelation == null ? this.productShelfRelation : productShelfRelation.value
    );
  }
  
  Product.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _productName = json['productName'],
      _productID = json['productID'],
      _productPrice = json['productPrice'],
      _ProductLefts = (json['ProductLefts'] as num?)?.toInt(),
      _productCategory = json['productCategory'],
      _productImagePath = json['productImagePath'],
      _productDescription = json['productDescription'],
      _orderedProductRelation = json['orderedProductRelation'] is List
        ? (json['orderedProductRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => OrderItem.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _productShelfRelation = json['productShelfRelation'] is List
        ? (json['productShelfRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Shelf.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'productName': _productName, 'productID': _productID, 'productPrice': _productPrice, 'ProductLefts': _ProductLefts, 'productCategory': _productCategory, 'productImagePath': _productImagePath, 'productDescription': _productDescription, 'orderedProductRelation': _orderedProductRelation?.map((OrderItem? e) => e?.toJson()).toList(), 'productShelfRelation': _productShelfRelation?.map((Shelf? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'productName': _productName,
    'productID': _productID,
    'productPrice': _productPrice,
    'ProductLefts': _ProductLefts,
    'productCategory': _productCategory,
    'productImagePath': _productImagePath,
    'productDescription': _productDescription,
    'orderedProductRelation': _orderedProductRelation,
    'productShelfRelation': _productShelfRelation,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ProductModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ProductModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PRODUCTNAME = amplify_core.QueryField(fieldName: "productName");
  static final PRODUCTID = amplify_core.QueryField(fieldName: "productID");
  static final PRODUCTPRICE = amplify_core.QueryField(fieldName: "productPrice");
  static final PRODUCTLEFTS = amplify_core.QueryField(fieldName: "ProductLefts");
  static final PRODUCTCATEGORY = amplify_core.QueryField(fieldName: "productCategory");
  static final PRODUCTIMAGEPATH = amplify_core.QueryField(fieldName: "productImagePath");
  static final PRODUCTDESCRIPTION = amplify_core.QueryField(fieldName: "productDescription");
  static final ORDEREDPRODUCTRELATION = amplify_core.QueryField(
    fieldName: "orderedProductRelation",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'OrderItem'));
  static final PRODUCTSHELFRELATION = amplify_core.QueryField(
    fieldName: "productShelfRelation",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Shelf'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Product";
    modelSchemaDefinition.pluralName = "Products";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTLEFTS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTCATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTIMAGEPATH,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Product.PRODUCTDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Product.ORDEREDPRODUCTRELATION,
      isRequired: false,
      ofModelName: 'OrderItem',
      associatedKey: OrderItem.PRODUCTID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Product.PRODUCTSHELFRELATION,
      isRequired: false,
      ofModelName: 'Shelf',
      associatedKey: Shelf.PRODUCTID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ProductModelType extends amplify_core.ModelType<Product> {
  const _ProductModelType();
  
  @override
  Product fromJson(Map<String, dynamic> jsonData) {
    return Product.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Product';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Product] in your schema.
 */
class ProductModelIdentifier implements amplify_core.ModelIdentifier<Product> {
  final String id;

  /** Create an instance of ProductModelIdentifier using [id] the primary key. */
  const ProductModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ProductModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ProductModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}