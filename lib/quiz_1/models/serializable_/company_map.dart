import 'package:json_annotation/json_annotation.dart';
import 'package:quizzes/quiz_1/models/serializable_/company.dart';
part 'company_map.g.dart';

@JsonSerializable()
class Companymap{
  @JsonKey(name: "company")
  Company ?company;

  Companymap(this.company);

  factory Companymap.fromJson(Map<String,dynamic>json)=> _$CompanymapFromJson(json);

  Map<String,dynamic>ToJson()=>_$CompanymapToJson(this);

}