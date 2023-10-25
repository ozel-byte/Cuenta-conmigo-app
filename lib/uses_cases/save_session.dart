import 'package:cicla/entities/user_repository.dart';

class SaveSession {
  final UserRepository repository;

  SaveSession({required this.repository});

  Future<bool> saveSharePreferences() async {
    return await repository.saveSession();
  }
}
