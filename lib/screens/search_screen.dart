import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/search_provider.dart';
import '../widgets/business_card.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchResults = Provider.of<SearchProvider>(context).searchResults;

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Businesses'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                Provider.of<SearchProvider>(context, listen: false).searchBusinesses(value);
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return BusinessCard(business: searchResults[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
