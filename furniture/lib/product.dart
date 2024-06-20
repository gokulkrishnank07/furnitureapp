import 'package:flutter/material.dart';
import 'package:furniture/addroute.dart';
import 'package:furniture/coloroption.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Product",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.black, blurRadius: 10, offset: Offset(2, 2))
                ]),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              shadows: [
                Shadow(
                    color: Colors.black, blurRadius: 10, offset: Offset(2, 2))
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 360,
            height: 420,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/wood chair.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 250, top: 400),
              child: Icon(
                Icons.favorite,
                shadows: [
                  Shadow(
                      color: Colors.black, blurRadius: 12, offset: Offset(1, 2))
                ],
                size: 38,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 440,
              left: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "120.0",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                const Row(
                  children: [
                    Text(
                      "Minimal Chair",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Color option"),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return const Coloroption();
                        },
                        itemCount: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        "A seat, especially for one person, usually having four legs for support and a rest for the back and often having rests for the arms."),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 51, left: 130),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.black87,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(60))),
                    width: 200,
                    height: 70,
                    child: const Addroute(),
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
