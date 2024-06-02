import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.g.dart';
part 'address.freezed.dart';


@freezed
class Address with _$Address {

  const factory Address({
    required String street,
    required String city,
    required String state,
    required String postalCode,
  })= _Address;

  factory Address.fromJson(Map<String, dynamic>json)=>
      _$AddressFromJson(json);
}