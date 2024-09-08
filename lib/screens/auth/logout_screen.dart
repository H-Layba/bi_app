import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/auth_provider.dart';

class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Logout'),
      content: Text('Are you sure you want to logout?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No'),
        ),
        TextButton(
          onPressed: () {
            Provider.of<AuthProvider>(context, listen: false).logout();
            Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          },
          child: Text('Yes'),
        ),
      ],
    );
  }
}
