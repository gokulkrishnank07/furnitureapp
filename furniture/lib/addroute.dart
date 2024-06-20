import 'package:flutter/material.dart';
import 'package:furniture/addtocart.dart';

class Addroute extends StatelessWidget {
  const Addroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Addtocart(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        Text(
          'Add To Cart',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
