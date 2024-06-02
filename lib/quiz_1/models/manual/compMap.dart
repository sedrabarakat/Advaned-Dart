import 'package:quizzes/quiz_1/models/manual/company.dart';

class CompMap {
  Company? company;


  CompMap(this.company);

  CompMap.fromJson(Map<String, dynamic> json) {
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
     "company" :company!.toJson()
    };
  }
}