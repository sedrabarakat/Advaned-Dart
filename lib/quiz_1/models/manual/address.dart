class Address{
  String ?street;
  String ?city;
  String ?state;
  String ?postalCode;

  Address(this.street, this.city, this.state, this.postalCode);

  Address.fromJson(Map<String, dynamic> json){
    street=json['street'];
    city=json['city'];
    state=json['state'];
    postalCode=json['postalCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'city': city,
      'state': state,
      'postalCode':postalCode
    };
  }


}