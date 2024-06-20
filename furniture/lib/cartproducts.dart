import 'package:flutter/material.dart';

class Cartproducts extends StatelessWidget {
  const Cartproducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wood chair.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 0, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimalist Chair',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '250.0/-',
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
