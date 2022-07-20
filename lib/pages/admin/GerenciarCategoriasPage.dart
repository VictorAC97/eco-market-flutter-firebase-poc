import 'package:eco_market_flutter/models/Categoria.dart';
import 'package:eco_market_flutter/repositories/CategoriaRepository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'GerenciarCategoriasPage/widgets/adicionar_categoria_widget.dart';

class GerenciarCategoriasPage extends StatelessWidget {
  const GerenciarCategoriasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categorias = context.watch<CategoriaRepository>();
    List<Categoria> lista = categorias.categorias;

    adicionarCategoria() {
      return showDialog(
          context: context, builder: (context) => const AdicionarCategoria());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        actions: [
          IconButton(
            onPressed: adicionarCategoria,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Consumer<CategoriaRepository>(
              builder: ((context, value, child) {
                final chave = DateTime.now().millisecondsSinceEpoch.toString();
                return ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: ((context, index) => Dismissible(
                        key: Key(chave),
                        direction: DismissDirection.startToEnd,
                        background: Container(
                          color: Colors.red,
                          child: Row(
                            children: const [
                              Padding(padding: EdgeInsets.all(4)),
                              Icon(
                                Icons.delete_forever,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        onDismissed: (direction) {
                          categorias.removeCategoria(value.categorias[index]);
                        },
                        child: ListTile(
                          title: Text(value.categorias[index].nome),
                        ),
                      )),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
