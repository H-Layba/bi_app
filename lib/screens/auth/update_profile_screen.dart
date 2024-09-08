import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_text_field.dart';
import '../../providers/auth_provider.dart';

class UpdateProfileScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthProvider>(context).getCurrentUser();

    if (user != null) {
      _nameController.text = user.name;
      _emailController.text = user.email;
      _cityController.text = user.city;
      _addressController.text = user.address;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Update Profile'),
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
                Provider.of<AuthProvider>(context, listen: false).updateProfile(
                  _nameController.text,
                  _emailController.text,
                  _cityController.text,
                  _addressController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
