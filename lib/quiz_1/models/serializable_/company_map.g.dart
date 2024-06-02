// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Companymap _$CompanymapFromJson(Map<String, dynamic> json) => Companymap(
      json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanymapToJson(Companymap instance) =>
    <String, dynamic>{
      'company': instance.company,
    };
