import 'package:donut_app_2a_lara/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
   ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ]; //final es como la decisión final, no va a cambiar
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
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
          donutPrice : donutsOnSale [index][1],
          donutColor : donutsOnSale [index][2],
          imageName : donutsOnSale [index][3],

        );
      },//Contexto y donde está
    );
  }
}