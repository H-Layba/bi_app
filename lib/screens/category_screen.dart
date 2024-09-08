import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/business_provider.dart';
import '../widgets/business_card.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final businesses = Provider.of<BusinessProvider>(context).businesses;

    return Scaffold(
      appBar: AppBar(
        title: Text('Businesses'),
      ),
      body: ListView.builder(
        itemCount: businesses.length,
        itemBuilder: (context, index) {
          return BusinessCard(business: businesses[index]);
        },
      ),
    );
  }
}
