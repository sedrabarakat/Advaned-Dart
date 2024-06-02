class Availability{
  bool? online;
  bool? inStore;

  Availability.fromJson(Map<String, dynamic> json) {
    online = json['online'];
    inStore = json['inStore'];
  }

  Map<String, dynamic> toJson() {
    return {
      "online":online,
      "inStore":inStore
    };
  }

}