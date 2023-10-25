import 'package:cicla/entities/user.dart';
import 'package:cicla/entities/user_repository.dart';

class UpdateUser {
  final UserRepository repository;

  UpdateUser({required this.repository});

  Future<bool> update(User user) async {
    return await repository.updateUser(user);
  }
}