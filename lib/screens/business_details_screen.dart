import 'package:flutter/material.dart';
import '../models/business.dart';

class BusinessDetailsScreen extends StatelessWidget {
  final Business business;

  BusinessDetailsScreen({required this.business});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(business.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(business.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(business.address, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Phone: ${business.phoneNumber}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(business.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement call action
                  },
                  child: Text('Call Business'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to reviews screen (if implemented)
                  },
                  child: Text('Read Reviews'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
