
import 'package:cicla/entities/user_repository.dart';

import '../entities/user.dart';

class ExistUser{
  final UserRepository repository;

  ExistUser({required this.repository});

  Future<bool> exist(User user) async{
    return await repository.existUser(user);
  }
}