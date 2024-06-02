// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      is_active: json['is_active'] as bool,
      name: json['name'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      established: json['established'] as String,
      departments: (json['departments'] as List<dynamic>)
          .map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'is_active': instance.is_active,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established,
      'departments': instance.departments,
    };
