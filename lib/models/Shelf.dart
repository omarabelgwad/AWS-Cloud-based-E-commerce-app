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


/** This is an auto generated class representing the Shelf type in your schema. */
class Shelf extends amplify_core.Model {
  static const classType = const _ShelfModelType();
  final String id;
  final int? _shelfID;
  final String? _shelfStatus;
  final int? _shelfXCoordinate;
  final int? _shelfItemCount;
  final String? _productID;
  final int? _shelfYCoordinate;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ShelfModelIdentifier get modelIdentifier {
      return ShelfModelIdentifier(
        id: id
      );
  }
  
  int? get shelfID {
    return _shelfID;
  }
  
  String? get shelfStatus {
    return _shelfStatus;
  }
  
  int? get shelfXCoordinate {
    return _shelfXCoordinate;
  }
  
  int? get shelfItemCount {
    return _shelfItemCount;
  }
  
  String get productID {
    try {
      return _productID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get shelfYCoordinate {
    return _shelfYCoordinate;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Shelf._internal({required this.id, shelfID, shelfStatus, shelfXCoordinate, shelfItemCount, required productID, shelfYCoordinate, createdAt, updatedAt}): _shelfID = shelfID, _shelfStatus = shelfStatus, _shelfXCoordinate = shelfXCoordinate, _shelfItemCount = shelfItemCount, _productID = productID, _shelfYCoordinate = shelfYCoordinate, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Shelf({String? id, int? shelfID, String? shelfStatus, int? shelfXCoordinate, int? shelfItemCount, required String productID, int? shelfYCoordinate}) {
    return Shelf._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      shelfID: shelfID,
      shelfStatus: shelfStatus,
      shelfXCoordinate: shelfXCoordinate,
      shelfItemCount: shelfItemCount,
      productID: productID,
      shelfYCoordinate: shelfYCoordinate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Shelf &&
      id == other.id &&
      _shelfID == other._shelfID &&
      _shelfStatus == other._shelfStatus &&
      _shelfXCoordinate == other._shelfXCoordinate &&
      _shelfItemCount == other._shelfItemCount &&
      _productID == other._productID &&
      _shelfYCoordinate == other._shelfYCoordinate;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Shelf {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shelfID=" + (_shelfID != null ? _shelfID!.toString() : "null") + ", ");
    buffer.write("shelfStatus=" + "$_shelfStatus" + ", ");
    buffer.write("shelfXCoordinate=" + (_shelfXCoordinate != null ? _shelfXCoordinate!.toString() : "null") + ", ");
    buffer.write("shelfItemCount=" + (_shelfItemCount != null ? _shelfItemCount!.toString() : "null") + ", ");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("shelfYCoordinate=" + (_shelfYCoordinate != null ? _shelfYCoordinate!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Shelf copyWith({int? shelfID, String? shelfStatus, int? shelfXCoordinate, int? shelfItemCount, String? productID, int? shelfYCoordinate}) {
    return Shelf._internal(
      id: id,
      shelfID: shelfID ?? this.shelfID,
      shelfStatus: shelfStatus ?? this.shelfStatus,
      shelfXCoordinate: shelfXCoordinate ?? this.shelfXCoordinate,
      shelfItemCount: shelfItemCount ?? this.shelfItemCount,
      productID: productID ?? this.productID,
      shelfYCoordinate: shelfYCoordinate ?? this.shelfYCoordinate);
  }
  
  Shelf copyWithModelFieldValues({
    ModelFieldValue<int?>? shelfID,
    ModelFieldValue<String?>? shelfStatus,
    ModelFieldValue<int?>? shelfXCoordinate,
    ModelFieldValue<int?>? shelfItemCount,
    ModelFieldValue<String>? productID,
    ModelFieldValue<int?>? shelfYCoordinate
  }) {
    return Shelf._internal(
      id: id,
      shelfID: shelfID == null ? this.shelfID : shelfID.value,
      shelfStatus: shelfStatus == null ? this.shelfStatus : shelfStatus.value,
      shelfXCoordinate: shelfXCoordinate == null ? this.shelfXCoordinate : shelfXCoordinate.value,
      shelfItemCount: shelfItemCount == null ? this.shelfItemCount : shelfItemCount.value,
      productID: productID == null ? this.productID : productID.value,
      shelfYCoordinate: shelfYCoordinate == null ? this.shelfYCoordinate : shelfYCoordinate.value
    );
  }
  
  Shelf.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _shelfID = (json['shelfID'] as num?)?.toInt(),
      _shelfStatus = json['shelfStatus'],
      _shelfXCoordinate = (json['shelfXCoordinate'] as num?)?.toInt(),
      _shelfItemCount = (json['shelfItemCount'] as num?)?.toInt(),
      _productID = json['productID'],
      _shelfYCoordinate = (json['shelfYCoordinate'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'shelfID': _shelfID, 'shelfStatus': _shelfStatus, 'shelfXCoordinate': _shelfXCoordinate, 'shelfItemCount': _shelfItemCount, 'productID': _productID, 'shelfYCoordinate': _shelfYCoordinate, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'shelfID': _shelfID,
    'shelfStatus': _shelfStatus,
    'shelfXCoordinate': _shelfXCoordinate,
    'shelfItemCount': _shelfItemCount,
    'productID': _productID,
    'shelfYCoordinate': _shelfYCoordinate,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ShelfModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ShelfModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final SHELFID = amplify_core.QueryField(fieldName: "shelfID");
  static final SHELFSTATUS = amplify_core.QueryField(fieldName: "shelfStatus");
  static final SHELFXCOORDINATE = amplify_core.QueryField(fieldName: "shelfXCoordinate");
  static final SHELFITEMCOUNT = amplify_core.QueryField(fieldName: "shelfItemCount");
  static final PRODUCTID = amplify_core.QueryField(fieldName: "productID");
  static final SHELFYCOORDINATE = amplify_core.QueryField(fieldName: "shelfYCoordinate");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Shelf";
    modelSchemaDefinition.pluralName = "Shelves";
    
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
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["productID"], name: "byProduct")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Shelf.SHELFID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Shelf.SHELFSTATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Shelf.SHELFXCOORDINATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Shelf.SHELFITEMCOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Shelf.PRODUCTID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Shelf.SHELFYCOORDINATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
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

class _ShelfModelType extends amplify_core.ModelType<Shelf> {
  const _ShelfModelType();
  
  @override
  Shelf fromJson(Map<String, dynamic> jsonData) {
    return Shelf.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Shelf';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Shelf] in your schema.
 */
class ShelfModelIdentifier implements amplify_core.ModelIdentifier<Shelf> {
  final String id;

  /** Create an instance of ShelfModelIdentifier using [id] the primary key. */
  const ShelfModelIdentifier({
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
  String toString() => 'ShelfModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ShelfModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}