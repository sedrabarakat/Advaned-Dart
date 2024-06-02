// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      json['is_active'] as bool?,
      json['name'] as String?,
      json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      Company._fromJsonFormat(json['established'] as String),
      (json['departments'] as List<dynamic>?)
          ?.map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'is_active': instance.is_active,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established,
      'departments': instance.departments,
    };
