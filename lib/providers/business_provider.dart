import 'package:flutter/material.dart';
import '../models/business.dart';

class BusinessProvider with ChangeNotifier {
  List<Business> _businesses = [];
  String _selectedCategory = '';

  List<Business> get businesses => _businesses.where((b) => b.category == _selectedCategory).toList();

  void addBusiness(String name, String address, String phoneNumber, String category, String description) {
    _businesses.add(Business(
      id: DateTime.now().toString(),
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      category: category,
      description: description,
    ));
    notifyListeners();
  }

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }
}
