import 'package:cicla/entities/user.dart';
import 'package:cicla/entities/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseUserInfra implements UserRepository {
  @override
  Future<User> add(User user) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<bool> existUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final isValidUser = await FirebaseFirestore.instance
        .collection("User")
        .where("email", isEqualTo: user.email)
        .where("password", isEqualTo: user.password)
        .get();
    if (isValidUser.docs.isNotEmpty) {
      await prefs.setString("id", isValidUser.docs.first.id);
    }
    return isValidUser.docs.isEmpty ? false : true;
  }

  @override
  Future<bool> saveSession() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("session", "true");
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> getSession() {
    // TODO: implement getInfoUser
    throw UnimplementedError();
  }

  @override
  Future<User> getDataUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final user = await FirebaseFirestore.instance
        .collection("User")
        .doc(prefs.getString("id"))
        .get();
    print(user.data());
    return User.fromJsonAll({
      "email": user.get("email"),
      "password": user.get("password"),
      "img": user.get("img"),
      "name": user.get("name"),
      "last-name": user.get("last-name"),
      "Date": user.get("Date"),
      "sexo": user.get("sexo"),
      "weight": user.get("weight"),
      "tall": user.get("tall"),
      "enfermedad": user.get("enfermedad")
    });
  }

  @override
  Future<bool> updateUser(User user) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await FirebaseFirestore.instance
          .collection("User")
          .doc(prefs.getString("id"))
          .update({
        "Date": user.date,
        "email": user.email,
        "enfermedad": user.enfermedad,
        "img": user.img,
        "last-name": user.lastName,
        "name": user.name,
        "password": user.password,
        "sexo": user.sexo == Sexo.masculino ? "masculino" : "femenino",
        "tall": user.tall,
        "weight": user.weight
      });
      return true;
    } catch (e) {
      print("error");
      print(e);
      return false;
    }
  }
}
