import 'package:flutter/material.dart';

class GenderDropdownForm extends StatefulWidget {
  @override
  _GenderDropdownFormState createState() => _GenderDropdownFormState();
}

class _GenderDropdownFormState extends State<GenderDropdownForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Name input

              // Gender Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Gender'),
                value: _selectedGender,
                items: ['Male', 'Female'].map((gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Please select gender' : null,
              ),

              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("Name: $_name");
                    print("Gender: $_selectedGender");
                    // You can now use these values or submit to backend
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
