
import 'package:cicla/entities/user_repository.dart';

import '../entities/user.dart';

class AddUser{
  final UserRepository repository;

  AddUser({required this.repository});

  Future<User> add(User user) async{
    return await repository.add(user);
  }
}