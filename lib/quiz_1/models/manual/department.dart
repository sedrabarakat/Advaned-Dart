import 'package:quizzes/quiz_1/mixins/Time_Helper_Mixin.dart';
import 'package:quizzes/quiz_1/models/manual/avaiality.dart';

class Department with Time_Helper_Mixin{
  String ?deptId;
  String ?name;
  String ?manager;
  String ?budget;
  String ?year;
  Availability ?availability;
  String ?meeting_time;

  Department(this.deptId, this.name, this.manager, this.budget, this.year,
      this.availability, this.meeting_time);

  Department.fromJson(Map<String, dynamic> json){
    deptId=json['deptId'];
    name=json['name'];
    manager=json['manager'];
    budget=json['budget'];
    year=(json['year']!=null)?json['year']:null;
    availability=new Availability.fromJson(json['availability']);
    meeting_time=_fromJson_format(json['meeting_time']);



  }

  static String _fromJson_format(String timeString) {

    return Time_Helper_Mixin.parseTime24Hour(timeString);

  }


  Map<String, dynamic> toJson() {
    return {
      'deptId': deptId,
      'name': name,
      'manager': manager,
      'budget': budget,
      'year': year,
      'availability': availability?.toJson(),
      'meeting_time': meeting_time,
    };

  }}