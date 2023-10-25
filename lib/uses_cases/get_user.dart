import 'package:cicla/entities/user.dart';
import 'package:cicla/entities/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser({required this.repository});

  Future<User> get() async {
    return await repository.getDataUser();
  }
}