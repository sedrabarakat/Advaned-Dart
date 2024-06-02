import 'package:freezed_annotation/freezed_annotation.dart';

import 'availability.dart';

part 'department.g.dart';
part 'department.freezed.dart';

@freezed
class Department with _$Department{
  const factory Department({
    required String deptId ,
    required String name ,
    required String manager ,
    required String budget ,
    required String year ,
    required Availability availability,
    required String meeting_time ,
  })= _Department;

  factory Department.fromJson(Map<String,dynamic>json)=>_$DepartmentFromJson(json);

}