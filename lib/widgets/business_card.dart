import 'package:flutter/material.dart';
import '../models/business.dart';

class BusinessCard extends StatelessWidget {
  final Business business;

  BusinessCard({required this.business});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(business.name),
        subtitle: Text(business.address),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/business-details',
            arguments: business,
          );
        },
      ),
    );
  }
}
