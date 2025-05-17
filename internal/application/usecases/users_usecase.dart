import '../../database/models/users.dart';
import '../../database/repository/users/users_repository.dart';

class UsersUseCase {
  final UsersRepository repository;

  UsersUseCase({required this.repository});

  Future<List<Users>> listUsers() async {
    return await repository.getAll();
  }

  Future<Users> getUserById(int id) async {
    return await repository.getUserById(id);
  }

  Future<void> createUserById(Users user) async {
    await repository.insertUser(user);
  }

  Future<void> deleteUserById(int id) async {
    await repository.deleteUserById(id);
  }

  Future<Users> updateUserById(Users user, int id) async {
    return await repository.updateUserById(user, id);
  }
}
