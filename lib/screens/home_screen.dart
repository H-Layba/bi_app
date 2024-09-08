import 'package:flutter/material.dart';
import '../widgets/category_tile.dart';
import '../providers/business_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          CategoryTile(title: 'Food', onTap: () {
            Provider.of<BusinessProvider>(context, listen: false).setCategory('Food');
            Navigator.pushNamed(context, '/category');
          }),
          CategoryTile(title: 'Healthcare', onTap: () {
            Provider.of<BusinessProvider>(context, listen: false).setCategory('Healthcare');
            Navigator.pushNamed(context, '/category');
          }),
          CategoryTile(title: 'Hotels', onTap: () {
            Provider.of<BusinessProvider>(context, listen: false).setCategory('Hotels');
            Navigator.pushNamed(context, '/category');
          }),
          CategoryTile(title: 'Education', onTap: () {
            Provider.of<BusinessProvider>(context, listen: false).setCategory('Education');
            Navigator.pushNamed(context, '/category');
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-business');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
