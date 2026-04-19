import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: screenWidth * 0.7,        // ← 70% of screen width
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              shoe.imagePath,
              height: screenHeight * 0.22,   // ← 22% of screen height
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // description
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03,
            ),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: screenWidth * 0.032,  // ← scales with screen
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // price + details
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.03,
              bottom: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.045,  // ← scales with screen
                      ),
                    ),

                    const SizedBox(height: 5),

                    // price
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screenWidth * 0.035,  // ← scales with screen
                      ),
                    ),
                  ],
                ),

                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(screenWidth * 0.045),  // ← scales with screen
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}