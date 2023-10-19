class User {
  String? email;
  String? password;

  User.fromJson(Map<String, String> data)
      : email = data["email"],
        password = data["password"];
}
