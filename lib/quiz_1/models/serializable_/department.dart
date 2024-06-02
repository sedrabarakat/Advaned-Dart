import 'package:json_annotation/json_annotation.dart';
import 'package:quizzes/quiz_1/mixins/Time_Helper_Mixin.dart';

import 'package:quizzes/quiz_1/models/serializable_/availability.dart';
part 'department.g.dart';
@JsonSerializable()
class Department with Time_Helper_Mixin{
  @JsonKey(name: "deptId")
  String ?deptId;
  @JsonKey(name: "name")
  String ?name;
  @JsonKey(name: "manager")
  String ?manager;
  @JsonKey(name: "budget")
  double ?budget;
  @JsonKey(name: "year")
  int ?year;
  @JsonKey(name: "availability")
  Availability ?availability;
  @JsonKey(name: "meeting_time",fromJson: _fromJson_format)
  String ?meeting_time;

  Department(this.deptId, this.name, this.manager, this.budget, this.year,
      this.availability, this.meeting_time);

  factory Department.fromJson(Map<String,dynamic>json)=>_$DepartmentFromJson(json);

  Map<String,dynamic>ToJson()=>_$DepartmentToJson(this);

  static String _fromJson_format(String timeString) {

      return Time_Helper_Mixin.parseTime12Hour(timeString);

  }
}