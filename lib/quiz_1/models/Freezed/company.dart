import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizzes/quiz_1/models/Freezed/address.dart';
import 'package:quizzes/quiz_1/models/Freezed/department.dart';


part 'company.g.dart';
part 'company.freezed.dart';

@freezed
class Company with _$Company{

  const factory Company({
    required bool is_active,
    required String name,
    required Address address,
    required String established,
    required List<Department>departments,
  })= _Company;


  factory Company.fromJson(Map<String,dynamic>json)=>_$CompanyFromJson(json);


}