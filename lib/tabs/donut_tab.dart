import 'package:donut_app_2a_lara/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
    final Function(String, String) addToCart;

    DonutTab({super.key , required this.addToCart});
  // Lista de donas con 8 opciones
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Krispy Kream", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dunkin Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Vanilla", "Krispy Kream", "50", Colors.yellow, "lib/images/donut2.png"],
    ["Glazed chocolate cake", "Dunkin Donuts", "70", Colors.indigo, "lib/images/donut3.png"],
    ["Strawberry chips", "Krispy Kream", "65", Colors.green, "lib/images/donut4.png"],
    ["Red fruits", "Dunkin Donuts", "80", Colors.orange, "lib/images/donut1.png"],
  ];

  @override
  Widget build(BuildContext context) {
    // Removed the local addToCart function to prevent potential infinite loop

    return GridView.builder(
      //Cuántos elementos tiene
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      //Encargado de organizar la cuadrícula
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //Relación de aspecto
        childAspectRatio: 1 / 1.5,
      //Determinar número de columnas
          crossAxisCount: 2),
      itemBuilder: (context,index){
      //Elemento individual de la cuadrícula
        return DonutTile(
          donutFlavor : donutsOnSale [index][0],
          donutStore : donutsOnSale [index][1],
          donutPrice : donutsOnSale [index][2],
          donutColor : donutsOnSale [index][3],
          imageName : donutsOnSale [index][4],
        addToCart: (flavor, price) => addToCart(flavor, price),


        );
      },//Contexto y donde está
    );
  }
}