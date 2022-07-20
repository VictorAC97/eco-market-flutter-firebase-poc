import 'package:eco_market_flutter/models/Categoria.dart';
import 'package:flutter/cupertino.dart';

Categoria a = Categoria(nome: 'Frutas');
Categoria b = Categoria(nome: 'Carnes');
Categoria c = Categoria(nome: 'Laticínios');
Categoria d = Categoria(nome: 'Grãos');
Categoria e = Categoria(nome: 'Cereais');
Categoria f = Categoria(nome: 'Vegetais');

class CategoriaRepository extends ChangeNotifier {
  final List<Categoria> _categorias = [a, b, c, e, d, e, f];

  get categorias => _categorias;

  addCategoria(Categoria newCategoria) {
    if (!_categorias.contains(newCategoria)) {
      _categorias.add(newCategoria);
    }
    notifyListeners();
  }

  removeCategoria(Categoria categoria) {
    _categorias.remove(categoria);
    notifyListeners();
  }
}
