class Comp {
  Company? company;

  Comp({this.company});

  Comp.fromJson(Map<String, dynamic> json) {
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    return data;
  }
}

class Company {
  int? isActive;
  String? name;
  Address? address;
  String? established;
  List<Departments>? departments;

  Company(
      {this.isActive,
        this.name,
        this.address,
        this.established,
        this.departments});

  Company.fromJson(Map<String, dynamic> json) {
    isActive = json['is_active'];
    name = json['name'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    established = json['established'];
    if (json['departments'] != null) {
      departments = <Departments>[];
      json['departments'].forEach((v) {
        departments!.add(new Departments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_active'] = this.isActive;
    data['name'] = this.name;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['established'] = this.established;
    if (this.departments != null) {
      data['departments'] = this.departments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  String? street;
  String? city;
  String? state;
  String? postalCode;

  Address({this.street, this.city, this.state, this.postalCode});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    state = json['state'];
    postalCode = json['postalCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['postalCode'] = this.postalCode;
    return data;
  }
}

class Departments {
  String? deptId;
  String? name;
  String? manager;
  int? budget;
  int? year;
  Availability? availability;
  String? meetingTime;

  Departments(
      {this.deptId,
        this.name,
        this.manager,
        this.budget,
        this.year,
        this.availability,
        this.meetingTime});

  Departments.fromJson(Map<String, dynamic> json) {
    deptId = json['deptId'];
    name = json['name'];
    manager = json['manager'];
    budget = json['budget'];
    year = json['year'];
    availability = json['availability'] != null
        ? new Availability.fromJson(json['availability'])
        : null;
    meetingTime = json['meeting_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['deptId'] = this.deptId;
    data['name'] = this.name;
    data['manager'] = this.manager;
    data['budget'] = this.budget;
    data['year'] = this.year;
    if (this.availability != null) {
      data['availability'] = this.availability!.toJson();
    }
    data['meeting_time'] = this.meetingTime;
    return data;
  }
}

class Availability {
  bool? online;
  bool? inStore;

  Availability({this.online, this.inStore});

  Availability.fromJson(Map<String, dynamic> json) {
    online = json['online'];
    inStore = json['inStore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['online'] = this.online;
    data['inStore'] = this.inStore;
    return data;
  }
}