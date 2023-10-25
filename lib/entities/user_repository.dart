
 import 'package:cicla/entities/user.dart';

abstract class UserRepository {
  Future<User> add(User user);
  Future<bool> existUser(User user);
  Future<bool> saveSession();
  Future<bool> getSession();
  Future<User> getDataUser();
  Future<bool> updateUser(User user);
}