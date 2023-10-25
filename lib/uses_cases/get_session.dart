import 'package:cicla/entities/user_repository.dart';

class GetSession {
  final UserRepository repository;

  GetSession({required this.repository});

  Future<bool> saveSharePreferences() async {
    return await repository.getSession();
  }
}