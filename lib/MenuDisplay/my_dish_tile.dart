import 'package:flutter/material.dart';

class DishTile extends StatelessWidget {
  const DishTile({super.key, required this.name, required this.price, required this.image});

  final String name;
  final double price;
  final String image;

  String formatPrice(double price) {
    return '${price.toStringAsFixed(2)}€';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image, height: 120,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: TextStyle(
                  fontWeight: FontWeight.w500
                ),),
                Text(formatPrice(price).toString())
              ],
            ),
          )
        ],
    ),
    );
  }
}
