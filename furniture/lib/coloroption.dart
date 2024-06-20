import 'package:flutter/material.dart';

class Coloroption extends StatelessWidget {
  const Coloroption({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.brown),
      ),
    );
  }
}
