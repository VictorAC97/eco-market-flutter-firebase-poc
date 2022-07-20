import 'package:eco_market_flutter/models/Categoria.dart';

class Produto {
  String nome;
  String descricao;
  int quantidade;
  Categoria categoria;
  double peso;
  double preco;
  String foto;

  Produto({
    required this.nome,
    required this.descricao,
    required this.quantidade,
    required this.categoria,
    required this.peso,
    required this.preco,
    required this.foto,
  });
}
