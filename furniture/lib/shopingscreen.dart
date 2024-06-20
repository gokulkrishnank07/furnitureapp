// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:furniture/bestselling.dart';

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
            width: 25,
          ),
        ],
        leading: Icon(Icons.more_vert_outlined),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width / 1.27,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Icon(Icons.shopping_cart_rounded),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Explore",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Furnituremetireals();
                },
                itemCount: 5,
              ),
              // ListView(
              //   padding: EdgeInsets.only(left: 20),
              //   scrollDirection: Axis.horizontal,
              //   children: const [
              //     Furnituremetireals(),
              //     Furnituremetireals(),
              //     Furnituremetireals(),
              //   ],
              // ),
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  width: 300,
                  height: MediaQuery.of(context).size.height / 5.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 14,
                        offset: Offset(0, 3),
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Bestselling()),
            ),
          ],
        ),
      ),
    );
  }
}
