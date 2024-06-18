import 'package:flutter/material.dart';

class Furnituremetireals extends StatelessWidget {
  const Furnituremetireals({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          height: 320,
          width: 200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/blue.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 180,
                    width: 190,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 40,
                ),
                child: Text(
                  'item Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 70),
                child: Text('Discription'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  children: [
                    Text(
                      '250.0',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.add_circle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
