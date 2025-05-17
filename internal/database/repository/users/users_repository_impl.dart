import 'package:ratel/database/repository.dart';

import '../../models/users.dart';
import 'users_repository.dart';

class UsersRepositoryImpl extends RatelRepository<Users>
    implements UsersRepository {
  UsersRepositoryImpl();

  @override
  Future<List<Users>> getAll() async {
    final sql = 'SELECT id, name, cpf, cep FROM users;';
    final result = await execute(sql);
    return result ?? [];
  }

  @override
  Future<Users> getUserById(int id) async {
    final sql = 'SELECT id, name, cpf, cep FROM users WHERE id=@id;';
    final result = await execute(sql, substitutionValues: {'id': id});
    return result!.first;
  }

  @override
  Future<void> insertUser(Users user) async {
    final sql =
        'INSERT INTO users (name, cpf, cep) VALUES (@name, @cpf, @cep);';

    await execute(
      sql,
      substitutionValues: {'name': user.name, 'cpf': user.cpf, 'cep': user.cep},
    );
  }

  @override
  Future<void> deleteUserById(int id) async {
    final sql = 'DELETE FROM users WHERE id=@id';
    await execute(sql, substitutionValues: {'id': id});
  }

  @override
  Future<Users> updateUserById(Users user, int id) async {
    const sql = '''
    UPDATE users
    SET name = @name, cpf = @cpf, cep = @cep
    WHERE id = @id 
  ''';

    final updatedUser = await execute(
      sql,
      substitutionValues: {
        'id': id,
        'name': user.name,
        'cpf': user.cpf,
        'cep': user.cep,
      },
    );

    return updatedUser!.first;
  }
}
