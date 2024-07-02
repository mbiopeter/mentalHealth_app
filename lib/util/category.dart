import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final bgColor;
  final String categoryName;
  const Category({
    required this.bgColor,
    required this.categoryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 40,
      height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
