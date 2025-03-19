import 'package:donut_app_2a_lara/tabs/burger_tab.dart';
import 'package:donut_app_2a_lara/tabs/donut_tab.dart';
import 'package:donut_app_2a_lara/tabs/pancakes_tab.dart';
import 'package:donut_app_2a_lara/tabs/pizza_tab.dart';
import 'package:donut_app_2a_lara/tabs/smoothie_tab.dart';
import 'package:donut_app_2a_lara/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut tab
    const MyTab(iconPath: "lib/icons/donut.png"),
    // Burger tab
    const MyTab(iconPath: "lib/icons/burger.png"),
    // Smoothie tab
    const MyTab(iconPath: "lib/icons/smoothie.png"),
    // Pancake tab
    const MyTab(iconPath: "lib/icons/pancakes.png"),
    // Pizza tab
    const MyTab(iconPath: "lib/icons/pizza.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            // Texto "I want to eat"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // Tab bar (Pestañas)
            TabBar(tabs: myTabs),
            // Tab bar view (Contenido de pestañas)
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  const BurgerTab(),
                  const SmoothieTab(),
                  const PancakesTab(),
                  const PizzaTab(),
                ],
              ),
            ),
            // Carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Información del carrito
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2 Items | \$45",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Delivery Charges Included",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  // Botón "View Cart" alineado a la derecha
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 218, 113, 148),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      "View Cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
