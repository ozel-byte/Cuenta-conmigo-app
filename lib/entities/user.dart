class User {
  String? email;
  String? password;
  String? img;
  String? name;
  String? lastName;
  String? date;
  Sexo? sexo;
  String? weight;
  String? tall;
  String? enfermedad;

  User.fromJson(Map<String, String> data)
      : email = data["email"],
        password = data["password"];

  User.fromJsonAll(Map<String, String> user)
      : email = user["email"],
        password = user["password"],
        img = user["img"],
        name = user["name"],
        lastName = user["last-name"],
        date = user["Date"],
        sexo = user["sexo"] == "masculino" ? Sexo.masculino : Sexo.femenino,
        weight = user["weight"],
        tall = user["tall"],
        enfermedad = user["enfermedad"];
}

enum Sexo { masculino, femenino }
