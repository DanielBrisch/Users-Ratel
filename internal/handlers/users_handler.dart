import 'package:ratel/annotations/geral_annotations.dart';
import 'package:ratel/dependency_injector/injector.dart';
import 'package:ratel/http/handler.dart';

import '../application/DTOs/user_dto.dart';
import '../application/usecases/users_usecase.dart';
import '../database/models/users.dart';

class UsersHandler extends RatelHandler {
  final UsersUseCase useCase;

  UsersHandler() : useCase = Injector().get<UsersUseCase>();

  @Get('/list')
  Future<List<Users>> list() async {
    return await useCase.listUsers();
  }

  @Get('/get-by-id')
  Future<Users> getUserById(@Param() int id) async {
    return await useCase.getUserById(id);
  }

  @Post('/create')
  Future<void> create(@Body() UserDTO userDto) async {
    await useCase.createUserById(userDto.dtoToModel(userDto));
  }

  @Delete('/delete')
  Future<void> delete(@Param() int id) async {
    await useCase.deleteUserById(id);
  }

  @Put('/update')
  Future<Users> update(@Body() UserDTO userDto, @Param() int id) async {
    return useCase.updateUserById(userDto.dtoToModel(userDto), id);
  }
}
