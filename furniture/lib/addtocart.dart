import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture/cartproducts.dart';

class Addtocart extends StatelessWidget {
  const Addtocart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text(
                'Cart',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100),
              child: Icon(Icons.shopping_cart),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return const Cartproducts();
            },
            itemCount: 3,
          ),
          const SizedBox(
            height: 43,
          ),
          Column(
            children: [
              Container(
                width: 360,
                height: 360,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      color: Colors.black,
                      spreadRadius: 1,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Selected Items',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 143,
                          ),
                          Text(
                            '235.0',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.pink,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Shipping Fee',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 169,
                          ),
                          Text(
                            '50.0',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.pink,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        width: 60,
                        height: 30,
                        color: Colors.white,
                      ),
                      const Divider(
                        color: Colors.black45,
                        endIndent: 20,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              'Subtotal',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              '285.0',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          width: MediaQuery.of(context).size.height / 3,
                          height: 65,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 17),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Checkout',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
