import 'package:eco_market_flutter/models/Endereco.dart';
import 'package:eco_market_flutter/models/Produto.dart';

class Pedido {
  DateTime data;
  List<Produto> listaProdutos;
  Endereco endereco;

  Pedido({
    required this.data,
    required this.listaProdutos,
    required this.endereco,
  });
}
