import 'package:flutter/material.dart';
import '../models/business.dart'; // Ensure the path is correct

class SearchProvider with ChangeNotifier {
  List<Business> _searchResults = [];

  List<Business> get searchResults => _searchResults;

  // Replace with actual data source
  List<Business> _allBusinesses = [
    Business(
      id: '1',
      name: 'Business 1',
      address: 'Address 1',
      phoneNumber: '1234567890',
      category: 'Category 1',
      description: 'Description 1',
    ),
    Business(
      id: '2',
      name: 'Business 2',
      address: 'Address 2',
      phoneNumber: '0987654321',
      category: 'Category 2',
      description: 'Description 2',
    ),
    Business(
      id: '3',
      name: 'Business 3',
      address: 'Address 3',
      phoneNumber: '1122334455',
      category: 'Category 3',
      description: 'Description 3',
    ),
  ];

  void searchBusinesses(String query) {
    if (query.isEmpty) {
      _searchResults = [];
    } else {
      _searchResults = _allBusinesses
          .where((business) =>
          business.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    notifyListeners();
  }
}
