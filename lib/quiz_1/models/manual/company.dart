import 'package:quizzes/quiz_1/mixins/date_helper_mixin.dart';
import 'package:quizzes/quiz_1/models/manual/address.dart';
import 'package:quizzes/quiz_1/models/manual/department.dart';

class Company with Date_Helper_Mixin{
  bool? isActive;
  bool? is_active;
  bool? is_Active;
  String ?name;
  Address ?address;
  String ?established;
  List<Department>?departments;

  Company(this.is_active, this.name, this.address, this.established,
      this.departments);

  Company.fromJson(Map<String, dynamic> json) {
    is_active = (json['is_active']!=null)?json['is_active']:null;
    is_Active = (json['is_Active']!=null)?json['is_Active']:null;
    name = json['name'];
    address = json['address'] != null ? new Address.fromJson(json['address']) : null;
    established = formatJson(json['established']);
    if (json['departments'] != null) {
      departments = <Department>[];
      json['departments'].forEach((v) {
        departments!.add(new Department.fromJson(v));
      });
    }
  }

  static String formatJson(String dateString) {
    return Date_Helper_Mixin.UTC_Fromat(dateString);
  }

  Map<String, dynamic> toJson() {
    return {
      if(isActive!=null)'isActive': isActive
      else
        'is_active': is_active,

      'is_Active': is_Active,
      'name': name,
      'address': address?.toJson(),
      'established': established,
      'departments': departments?.map((dept) => dept.toJson()).toList(),
    };
  }


}