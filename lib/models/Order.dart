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


/** This is an auto generated class representing the Order type in your schema. */
class Order extends amplify_core.Model {
  static const classType = const _OrderModelType();
  final String id;
  final int? _orderID;
  final amplify_core.TemporalDate? _orderDate;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  OrderModelIdentifier get modelIdentifier {
      return OrderModelIdentifier(
        id: id
      );
  }
  
  int? get orderID {
    return _orderID;
  }
  
  amplify_core.TemporalDate? get orderDate {
    return _orderDate;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Order._internal({required this.id, orderID, orderDate, createdAt, updatedAt}): _orderID = orderID, _orderDate = orderDate, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Order({String? id, int? orderID, amplify_core.TemporalDate? orderDate, required amplify_core.TemporalDateTime order_date, required String order_id, required String customerID, required List OrderProducts, required String status}) {
    return Order._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      orderID: orderID,
      orderDate: orderDate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
      id == other.id &&
      _orderID == other._orderID &&
      _orderDate == other._orderDate;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Order {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("orderID=" + (_orderID != null ? _orderID!.toString() : "null") + ", ");
    buffer.write("orderDate=" + (_orderDate != null ? _orderDate!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Order copyWith({int? orderID, amplify_core.TemporalDate? orderDate}) {
    return Order._internal(
      id: id,
      orderID: orderID ?? this.orderID,
      orderDate: orderDate ?? this.orderDate);
  }
  
  Order copyWithModelFieldValues({
    ModelFieldValue<int?>? orderID,
    ModelFieldValue<amplify_core.TemporalDate?>? orderDate
  }) {
    return Order._internal(
      id: id,
      orderID: orderID == null ? this.orderID : orderID.value,
      orderDate: orderDate == null ? this.orderDate : orderDate.value
    );
  }
  
  Order.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _orderID = (json['orderID'] as num?)?.toInt(),
      _orderDate = json['orderDate'] != null ? amplify_core.TemporalDate.fromString(json['orderDate']) : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'orderID': _orderID, 'orderDate': _orderDate?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'orderID': _orderID,
    'orderDate': _orderDate,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<OrderModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<OrderModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ORDERID = amplify_core.QueryField(fieldName: "orderID");
  static final ORDERDATE = amplify_core.QueryField(fieldName: "orderDate");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Order";
    modelSchemaDefinition.pluralName = "Orders";
    
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
      key: Order.ORDERID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Order.ORDERDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
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

class _OrderModelType extends amplify_core.ModelType<Order> {
  const _OrderModelType();
  
  @override
  Order fromJson(Map<String, dynamic> jsonData) {
    return Order.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Order';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Order] in your schema.
 */
class OrderModelIdentifier implements amplify_core.ModelIdentifier<Order> {
  final String id;

  /** Create an instance of OrderModelIdentifier using [id] the primary key. */
  const OrderModelIdentifier({
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
  String toString() => 'OrderModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is OrderModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}