// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';

import 'furnituremetireals.dart';

class Shopingscreen extends StatelessWidget {
  const Shopingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Icon(Icons.person_3),
            SizedBox(
              width: 20,
            ),
          ],
          leading: Icon(Icons.more_vert_outlined)),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50, right: 10),
                child: Container(
                  width: 250,
                  height: 49,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: -4,
                          blurRadius: 3,
                          offset: Offset(3, 3),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      prefix: Icon(Icons.search),
                      suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                        ),
                      ),
                      labelText: 'Search',
                      labelStyle: TextStyle(fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
              Icon(Icons.shopping_cart_rounded),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              'Explore',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Furnituremetireals(),
                Furnituremetireals(),
                Furnituremetireals(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              'Best Selling',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 270,
            height: 130,
            color: Colors.amber,
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 100,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
