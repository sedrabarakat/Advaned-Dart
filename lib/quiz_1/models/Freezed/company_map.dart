
import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';

part 'company_map.g.dart';
part 'company_map.freezed.dart';

@freezed
class CompanyMap with _$CompanyMap{

  const factory CompanyMap({
    required Company company
})= _CompanyMap;


  factory CompanyMap.fromJson(Map<String,dynamic>json)=>_$$CompanyMapImplFromJson(json);



}