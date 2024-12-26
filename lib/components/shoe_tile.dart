import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        //shoe image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath),
        ),
        //description
        Text(
          shoe.description,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        )
        // price and details
        // add to cart button
      ]),
    );
  }
}
