import 'package:flutter/material.dart';
import 'package:furniture/product.dart';

class Bestselling extends StatelessWidget {
  const Bestselling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/wood chair.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(2, 4),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Dining Chair',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text('product details...'),
                  const Row(
                    children: [
                      Text(
                        '120.0',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ), 
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Product(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 140),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
