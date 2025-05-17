import 'package:ratel/annotations/geral_annotations.dart';
import 'package:ratel/dependency_injector/binding.dart';
import 'package:ratel/dependency_injector/injector.dart';

import '../internal/application/usecases/users_usecase.dart';
import '../internal/database/repository/users/users_repository.dart';
import '../internal/database/repository/users/users_repository_impl.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Injector().put<UsersRepository>(() => UsersRepositoryImpl());
    Injector().put<Auth>(() => Auth());
    Injector().put<UsersUseCase>(
      () => UsersUseCase(repository: Injector().get<UsersRepository>()),
    );
  }
}
