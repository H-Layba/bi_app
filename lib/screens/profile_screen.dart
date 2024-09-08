import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final user = authProvider.getCurrentUser();

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamed(context, '/logout');
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (user != null) ...[
              Text('Name: ${user.name}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('City: ${user.city}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Address: ${user.address}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/update-profile');
                },
                child: Text('Edit Profile'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to view user's added businesses
                },
                child: Text('View Added Businesses'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
