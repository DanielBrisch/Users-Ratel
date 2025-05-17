import '../../models/users.dart';

abstract class UsersRepository {
  Future<List<Users>> getAll();

  Future<Users> getUserById(int id);

  Future<void> insertUser(Users user);

  Future<void> deleteUserById(int id);

  Future<Users> updateUserById(Users user, int id);
}
