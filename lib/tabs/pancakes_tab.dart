import 'package:donut_app_2a_lara/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final void Function(String, String) addToCart;

  PancakesTab({super.key, required this.addToCart});

  // Lista de pancakes con 8 opciones
  final List pancakesOnSale = [
    ["Spongy pancakes", "IHOP", "36", Colors.blue, "lib/images/pancakes3.png"],
    ["Pancakes fillers", "Denny's", "45", Colors.red, "lib/images/pancakes6.png"],
    ["Japanese spongy pancakes", "The Pancake House", "84", Colors.purple, "lib/images/pancakes2.png"],
    ["Choco pancakes", "Waffle House", "95", Colors.brown, "lib/images/pancakes1.png"],
    ["Oat pancakes", "Perkins", "50", Colors.yellow, "lib/images/pancakes4.png"],
    ["Strawberry pancakes", "Village Inn", "70", Colors.indigo, "lib/images/pancakes5.png"],
    ["Hotcakes light", "Cracker Barrel", "65", Colors.green, "lib/images/pancakes7.png"],
    ["Berry pancakes", "Bob Evans", "80", Colors.blue, "lib/images/pancakes8.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas
        childAspectRatio: 1 / 1.5, // Relación de aspecto
      ),
      itemBuilder: (context, index) {
        // Verificar si el índice está dentro del rango de la lista
        if (index < pancakesOnSale.length) {
          final pancake = pancakesOnSale[index];

          return DonutTile(
            donutFlavor: pancake[0],
            donutStore: pancake[1],
            donutPrice: pancake[2],
            donutColor: pancake[3],
            imageName: pancake[4],
            addToCart: addToCart,
          );
        } else {
          // En caso de que el índice esté fuera de rango, retornar un widget vacío
          return const SizedBox.shrink();
        }
      },
    );
  }
}

