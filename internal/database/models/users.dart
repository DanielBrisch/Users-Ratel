import 'package:ratel/annotations/geral_annotations.dart';

@Json()
class Users {
  @Column(name: 'id')
  late int? id;

  @Column(name: 'name')
  late String? name;

  @Column(name: 'cpf')
  late String? cpf;

  @Column(name: 'cep')
  late String? cep;

  Users({this.id, this.name, this.cpf, this.cep});
}
