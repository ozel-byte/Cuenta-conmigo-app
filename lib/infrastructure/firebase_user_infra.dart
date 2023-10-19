import 'package:cicla/entities/user.dart';
import 'package:cicla/entities/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUserInfra implements UserRepository{
  @override
  Future<User> add(User user) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<bool> existUser(User user) async{
    final isValidUser = await FirebaseFirestore.instance.collection("User").where("email",isEqualTo: user.email).where("password", isEqualTo: user.password).get();
    return  isValidUser.docs.isEmpty ? false : true;
  }

}