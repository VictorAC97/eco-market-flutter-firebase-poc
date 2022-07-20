import 'package:eco_market_flutter/pages/home/widgets/categorias_menu_widget.dart';
import 'package:eco_market_flutter/pages/home/widgets/page_controller_widget.dart';
import 'package:eco_market_flutter/services/auth_service.dart';
import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
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
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(4)),
          CategoriasMenu(pageController: pageController),
          Expanded(
            child: Consumer<PageControllerNotifier>(
                builder: ((context, value, child) {
              return PageView(
                controller: pageController,
                onPageChanged: (int index) {
                  value.changePage(index);
                },
                children: [
                  Container(color: Colors.red),
                  Container(color: Colors.blue),
                  Container(color: Colors.green),
                  Container(color: Colors.orange),
                  Container(color: Colors.teal),
                  Container(color: Colors.indigo),
                  Container(color: Colors.black),
                ],
              );
            })),
          )
        ],
      ),
    );
  }
}
