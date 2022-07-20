import 'package:eco_market_flutter/pages/admin/GerenciarCategoriasPage.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painel Admin'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Gerenciar PRODUTOS'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GerenciarCategoriasPage()));
              },
              child: const Text('Gerenciar CATEGORIAS'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Gerenciar PEDIDOS'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Gerenciar USUARIOS'),
            ),
          ],
        ),
      ),
    );
  }
}
