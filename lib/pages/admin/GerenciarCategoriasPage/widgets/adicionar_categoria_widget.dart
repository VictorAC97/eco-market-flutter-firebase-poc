import 'package:eco_market_flutter/models/Categoria.dart';
import 'package:eco_market_flutter/repositories/CategoriaRepository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdicionarCategoria extends StatefulWidget {
  const AdicionarCategoria({Key? key}) : super(key: key);

  @override
  State<AdicionarCategoria> createState() => _AdicionarCategoriaState();
}

late TextEditingController _controllerName;
late final Categoria novaCategoria;
String? nome;

class _AdicionarCategoriaState extends State<AdicionarCategoria> {
  @override
  void initState() {
    _controllerName = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controllerName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var categorias = context.watch<CategoriaRepository>();

    return AlertDialog(
      title: const Text('Adicionar Categoria'),
      content: TextFormField(
        validator: (value) {
          if (value == '') {
            return 'Insira um nome';
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.always,
        controller: _controllerName,
        onChanged: (value) {
          setState(() {
            nome = value;
          });
        },
      ),
      actions: [
        OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar')),
        ElevatedButton(
            onPressed: () {
              novaCategoria = Categoria(nome: nome!);
              categorias.addCategoria(novaCategoria);
              _controllerName.clear();
              Navigator.pop(context);
            },
            child: const Text('Salvar')),
      ],
    );
  }
}
