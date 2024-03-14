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


/** This is an auto generated class representing the Robot type in your schema. */
class Robot extends amplify_core.Model {
  static const classType = const _RobotModelType();
  final String id;
  final int? _robotID;
  final String? _robotbatteryStatus;
  final int? _robotXCoordiante;
  final int? _robotYCoordinate;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RobotModelIdentifier get modelIdentifier {
      return RobotModelIdentifier(
        id: id
      );
  }
  
  int? get robotID {
    return _robotID;
  }
  
  String? get robotbatteryStatus {
    return _robotbatteryStatus;
  }
  
  int? get robotXCoordiante {
    return _robotXCoordiante;
  }
  
  int? get robotYCoordinate {
    return _robotYCoordinate;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Robot._internal({required this.id, robotID, robotbatteryStatus, robotXCoordiante, robotYCoordinate, createdAt, updatedAt}): _robotID = robotID, _robotbatteryStatus = robotbatteryStatus, _robotXCoordiante = robotXCoordiante, _robotYCoordinate = robotYCoordinate, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Robot({String? id, int? robotID, String? robotbatteryStatus, int? robotXCoordiante, int? robotYCoordinate}) {
    return Robot._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      robotID: robotID,
      robotbatteryStatus: robotbatteryStatus,
      robotXCoordiante: robotXCoordiante,
      robotYCoordinate: robotYCoordinate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Robot &&
      id == other.id &&
      _robotID == other._robotID &&
      _robotbatteryStatus == other._robotbatteryStatus &&
      _robotXCoordiante == other._robotXCoordiante &&
      _robotYCoordinate == other._robotYCoordinate;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Robot {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("robotID=" + (_robotID != null ? _robotID!.toString() : "null") + ", ");
    buffer.write("robotbatteryStatus=" + "$_robotbatteryStatus" + ", ");
    buffer.write("robotXCoordiante=" + (_robotXCoordiante != null ? _robotXCoordiante!.toString() : "null") + ", ");
    buffer.write("robotYCoordinate=" + (_robotYCoordinate != null ? _robotYCoordinate!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Robot copyWith({int? robotID, String? robotbatteryStatus, int? robotXCoordiante, int? robotYCoordinate}) {
    return Robot._internal(
      id: id,
      robotID: robotID ?? this.robotID,
      robotbatteryStatus: robotbatteryStatus ?? this.robotbatteryStatus,
      robotXCoordiante: robotXCoordiante ?? this.robotXCoordiante,
      robotYCoordinate: robotYCoordinate ?? this.robotYCoordinate);
  }
  
  Robot copyWithModelFieldValues({
    ModelFieldValue<int?>? robotID,
    ModelFieldValue<String?>? robotbatteryStatus,
    ModelFieldValue<int?>? robotXCoordiante,
    ModelFieldValue<int?>? robotYCoordinate
  }) {
    return Robot._internal(
      id: id,
      robotID: robotID == null ? this.robotID : robotID.value,
      robotbatteryStatus: robotbatteryStatus == null ? this.robotbatteryStatus : robotbatteryStatus.value,
      robotXCoordiante: robotXCoordiante == null ? this.robotXCoordiante : robotXCoordiante.value,
      robotYCoordinate: robotYCoordinate == null ? this.robotYCoordinate : robotYCoordinate.value
    );
  }
  
  Robot.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _robotID = (json['robotID'] as num?)?.toInt(),
      _robotbatteryStatus = json['robotbatteryStatus'],
      _robotXCoordiante = (json['robotXCoordiante'] as num?)?.toInt(),
      _robotYCoordinate = (json['robotYCoordinate'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'robotID': _robotID, 'robotbatteryStatus': _robotbatteryStatus, 'robotXCoordiante': _robotXCoordiante, 'robotYCoordinate': _robotYCoordinate, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'robotID': _robotID,
    'robotbatteryStatus': _robotbatteryStatus,
    'robotXCoordiante': _robotXCoordiante,
    'robotYCoordinate': _robotYCoordinate,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<RobotModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<RobotModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ROBOTID = amplify_core.QueryField(fieldName: "robotID");
  static final ROBOTBATTERYSTATUS = amplify_core.QueryField(fieldName: "robotbatteryStatus");
  static final ROBOTXCOORDIANTE = amplify_core.QueryField(fieldName: "robotXCoordiante");
  static final ROBOTYCOORDINATE = amplify_core.QueryField(fieldName: "robotYCoordinate");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Robot";
    modelSchemaDefinition.pluralName = "Robots";
    
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
      key: Robot.ROBOTID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Robot.ROBOTBATTERYSTATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Robot.ROBOTXCOORDIANTE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Robot.ROBOTYCOORDINATE,
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

class _RobotModelType extends amplify_core.ModelType<Robot> {
  const _RobotModelType();
  
  @override
  Robot fromJson(Map<String, dynamic> jsonData) {
    return Robot.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Robot';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Robot] in your schema.
 */
class RobotModelIdentifier implements amplify_core.ModelIdentifier<Robot> {
  final String id;

  /** Create an instance of RobotModelIdentifier using [id] the primary key. */
  const RobotModelIdentifier({
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
  String toString() => 'RobotModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RobotModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}