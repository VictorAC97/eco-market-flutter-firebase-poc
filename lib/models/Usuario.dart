import 'package:eco_market_flutter/models/Endereco.dart';

class Usuario {
  String nomeCompleto;
  int idade;
  DateTime dataNascimento;
  Endereco endereco;
  String foto;
  String email;

  Usuario({
    required this.nomeCompleto,
    required this.idade,
    required this.email,
    required this.dataNascimento,
    required this.endereco,
    required this.foto,
  });
}
