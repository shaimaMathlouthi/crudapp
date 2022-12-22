class Player {
  String? name;
  int? id;
  String? position;
  int? salary;

  Player(
      {required this.id,
      required this.name,
      required this.position,
      required this.salary});

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    salary = json['salary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['position'] = this.position;
    data['salary'] = this.salary;
    return data;
  }
}
