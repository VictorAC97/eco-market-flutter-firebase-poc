import 'package:eco_market_flutter/models/Categoria.dart';
import 'package:eco_market_flutter/pages/home/widgets/page_controller_widget.dart';
import 'package:eco_market_flutter/repositories/CategoriaRepository.dart';
import 'package:eco_market_flutter/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriasMenu extends StatelessWidget {
  PageController pageController;
  CategoriasMenu({Key? key, required this.pageController}) : super(key: key);
  int paginaAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Categoria> lista = context.watch<CategoriaRepository>().categorias;
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lista.length,
        itemBuilder: (context, index) => buildCategoria(lista, index),
      ),
    );
  }

  Widget buildCategoria(List<Categoria> lista, int index) {
    return Consumer<PageControllerNotifier>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);

            //paginaAtual = value.currentPage;
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lista[index].nome,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: value.currentPage == index
                          ? colorSchemeLight.primary
                          : colorSchemeLight.primary.withOpacity(0.4)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 2,
                  width: 30,
                  color: value.currentPage == index
                      ? colorSchemeLight.primary
                      : Colors.transparent,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
