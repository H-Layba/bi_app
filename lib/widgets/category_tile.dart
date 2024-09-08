import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  CategoryTile({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
