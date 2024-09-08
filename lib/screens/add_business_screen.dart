import 'package:flutter/material.dart';
import '../../widgets/custom_text_field.dart';
import '../../providers/business_provider.dart';
import 'package:provider/provider.dart';

class AddBusinessScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Business'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _nameController,
              labelText: 'Business Name',
            ),
            CustomTextField(
              controller: _addressController,
              labelText: 'Address',
            ),
            CustomTextField(
              controller: _phoneController,
              labelText: 'Phone Number',
            ),
            CustomTextField(
              controller: _categoryController,
              labelText: 'Category',
            ),
            CustomTextField(
              controller: _descriptionController,
              labelText: 'Description',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<BusinessProvider>(context, listen: false).addBusiness(
                  _nameController.text,
                  _addressController.text,
                  _phoneController.text,
                  _categoryController.text,
                  _descriptionController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
