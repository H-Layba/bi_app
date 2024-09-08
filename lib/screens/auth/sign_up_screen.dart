import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_text_field.dart';
import '../../providers/auth_provider.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _nameController,
              labelText: 'Name',
            ),
            CustomTextField(
              controller: _emailController,
              labelText: 'Email',
            ),
            CustomTextField(
              controller: _passwordController,
              labelText: 'Password',
              obscureText: true,
            ),
            CustomTextField(
              controller: _confirmPasswordController,
              labelText: 'Confirm Password',
              obscureText: true,
            ),
            CustomTextField(
              controller: _cityController,
              labelText: 'City',
            ),
            CustomTextField(
              controller: _addressController,
              labelText: 'Address',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).signUp(
                  _nameController.text,
                  _emailController.text,
                  _passwordController.text,
                  _cityController.text,
                  _addressController.text,
                );
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
