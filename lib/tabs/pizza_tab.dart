import 'package:donut_app_2a_lara/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  // Lista de donas con 8 opciones
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Krispy Kream", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dunkin Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Vanilla", "Krispy Kream", "50", Colors.yellow, "lib/images/grape_donut.png"],
    ["Blueberry", "Dunkin Donuts", "70", Colors.indigo, "lib/images/icecream_donut.png"],
    ["Matcha", "Krispy Kream", "65", Colors.green, "lib/images/icecream_donut.png"],
    ["Caramel", "Dunkin Donuts", "80", Colors.orange, "lib/images/icecream_donut.png"],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas
        childAspectRatio: 1 / 1.5, // Relación de aspecto
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}
