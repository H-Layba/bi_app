import 'package:flutter/material.dart';
import '../models/user.dart'; // Make sure the import path is correct

class AuthProvider with ChangeNotifier {
  String _token = '';
  User? _currentUser; // Use nullable to check for a logged-in user

  String get token => _token;

  User? getCurrentUser() => _currentUser;

  void login(String email, String password) {
    // Implement your login logic here
    _token = 'fake_token'; // Simulate a successful login
    _currentUser = User(
      id: '1',
      name: 'John Doe',
      email: email,
      password: password,
      city: 'Sample City',
      address: 'Sample Address',
    );
    notifyListeners();
  }

  void signUp(String name, String email, String password, String city, String address) {
    // Implement your sign-up logic here
    _token = 'fake_signup_token'; // Simulate a successful sign-up
    _currentUser = User(
      id: '2',
      name: name,
      email: email,
      password: password,
      city: city,
      address: address,
    );
    notifyListeners();
  }

  void updateProfile(String name, String email, String city, String address) {
    // Ensure that _currentUser is not null before updating
    if (_currentUser != null) {
      _currentUser = User(
        id: _currentUser!.id, // Retain the same id and password
        name: name,
        email: email,
        password: _currentUser!.password,
        city: city,
        address: address,
      );
      notifyListeners(); // Notify listeners that the user profile has been updated
    }
  }

  void logout() {
    _token = '';
    _currentUser = null; // Clear the current user
    notifyListeners();
  }

  bool get isAuthenticated => _token.isNotEmpty;
}
