import 'package:json_annotation/json_annotation.dart';
import 'package:quizzes/quiz_1/mixins/date_helper_mixin.dart';


import 'package:quizzes/quiz_1/models/serializable_/address.dart';
import 'package:quizzes/quiz_1/models/serializable_/department.dart';

part 'company.g.dart';

@JsonSerializable()
class Company with Date_Helper_Mixin{
  @JsonKey(name: "is_active") @JsonKey(name: "isActive")
  bool ?is_active;
  @JsonKey(name: "name")
  String ?name;
  @JsonKey(name: "address")
  Address ?address;
  @JsonKey(name: "established",fromJson: _fromJsonFormat,)//toJson: _ToJsonFormat
  String ?established;
  @JsonKey(name: "departments")
  List<Department>?departments;

  Company(this.is_active, this.name, this.address, this.established,
      this.departments);

  factory Company.fromJson(Map<String,dynamic> json)=> _$CompanyFromJson(json);

  static String _fromJsonFormat(String dateString) {
    return Date_Helper_Mixin.UTC_Fromat(dateString);
  }
  static String _ToJsonFormat(String dateString) {
    return Date_Helper_Mixin.Date2Utc(dateString);
  }

  Map<String,dynamic> ToJson()=>_$CompanyToJson(this);
}