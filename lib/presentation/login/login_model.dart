class Login {
  String? user;
  String? pass;

  Login({this.user, this.pass});

  Login.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user'] = user;
    data['pass'] = pass;
    return data;
  }
}
