import 'package:ratel/annotations/geral_annotations.dart';

import '../../database/models/users.dart';

@Json()
class UserDTO {
  @Column(name: 'name')
  late String? name;

  @Column(name: 'cpf')
  late String? cpf;

  @Column(name: 'cep')
  late String? cep;

  UserDTO({this.name, this.cpf, this.cep});

  Users dtoToModel(UserDTO userDTO) {
    return Users(name: userDTO.name, cpf: userDTO.cpf, cep: userDTO.cep);
  }
}
