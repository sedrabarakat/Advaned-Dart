// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Department _$DepartmentFromJson(Map<String, dynamic> json) => Department(
      json['deptId'] as String?,
      json['name'] as String?,
      json['manager'] as String?,
      (json['budget'] as num?)?.toDouble(),
      (json['year'] as num?)?.toInt(),
      json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
      Department._fromJson_format(json['meeting_time'] as String),
    );

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'deptId': instance.deptId,
      'name': instance.name,
      'manager': instance.manager,
      'budget': instance.budget,
      'year': instance.year,
      'availability': instance.availability,
      'meeting_time': instance.meeting_time,
    };
