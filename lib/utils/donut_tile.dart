import 'package:flutter/material.dart';
 
class DonutTile extends StatelessWidget {
 final String donutFlavor;
 final String donutStore;
  final String imageName;
 final String donutPrice;
 final dynamic donutColor;  //dynamic porque será de tipo Color y también usará []

 
 
 const DonutTile({
   super.key,
   required this.donutFlavor,
   required this.donutPrice,
   required this.donutColor,
   required this.imageName,
   required this.donutStore,
 });
                 
 @override
 Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(12.0),
     child: Container(
        decoration: BoxDecoration(
        color: donutColor[50],
        borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
          //PriceTag
          Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: donutColor [100],
                borderRadius:  const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  topRight: Radius.circular(24))),
              padding: 
              const EdgeInsets.symmetric(vertical: 8, horizontal: 18 ),
              child: Text("\$$donutPrice", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: donutColor[800])),)
          ],
          ),
          //Donut picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Image.asset(imageName),
          ),
          //Donut flavor text
          Text(donutFlavor, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          //Espacio entre textos
          const SizedBox(
            height: 4,
          ),
          Text(donutStore,style: TextStyle(color: Colors.grey[600])),
          //Love icon + add
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20), 
                child: Icon(Icons.favorite_border, color: Colors.black, size: 20.0),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20), 
                child: Text(
                  'Add',
                  style: TextStyle(
                    decoration: TextDecoration.underline, // Subrayado en el texto
                    color: Colors.black, 
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          )

          
          

          ],
        ),

        ),
   );
 }
}