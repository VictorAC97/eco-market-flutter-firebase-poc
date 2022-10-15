import 'package:eco_market_flutter/models/Categoria.dart';
import 'package:eco_market_flutter/repositories/CategoriaRepository.dart';
import 'package:eco_market_flutter/services/auth_service.dart';
//import 'package:eco_market_flutter/services/firebase_service.dart';
import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    //PageController pageController = PageController(initialPage: 0);
    List<Categoria> listaCategorias =
        context.watch<CategoriaRepository>().categorias;
    TabController tabController = TabController(
      length: listaCategorias.length,
      vsync: this,
    );
    //var db = context.watch<FirebaseService>().getAll();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        foregroundColor: colorSchemeLight.primary,
        elevation: 0,
        title: const Text('Loja Online'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          PopupMenuButton(
              icon: const Icon(Icons.person),
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: const Text('Sair'),
                      onTap: () => context.read<AuthService>().logout(),
                    ),
                  ]),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          indicatorColor: colorSchemeLight.primary,
          labelColor: Colors.black,
          tabs: [
            Tab(text: listaCategorias[0].nome),
            Tab(text: listaCategorias[1].nome),
            Tab(text: listaCategorias[2].nome),
            Tab(text: listaCategorias[3].nome),
            Tab(text: listaCategorias[4].nome),
            Tab(text: listaCategorias[5].nome),
            Tab(text: listaCategorias[6].nome),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.orange),
          Container(color: Colors.teal),
          Container(color: Colors.indigo),
          Container(color: Colors.black),
        ],
      ),
    );
  }
}
