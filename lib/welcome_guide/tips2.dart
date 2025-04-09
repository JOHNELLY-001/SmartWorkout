import 'package:flutter/material.dart';
import 'package:smart_one/welcome_guide/tips3.dart';

class Tips2Class extends StatefulWidget {
  @override
  _Tips2ClassState createState() => _Tips2ClassState();
}

class _Tips2ClassState  extends State<Tips2Class> {
  final _formKey =  GlobalKey<FormState>();

  String? _gender;
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _ageController = TextEditingController();



@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Padding(padding: EdgeInsets.only(top: 180.0, left: 30.0, right: 30.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Text('Enter your personal details:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),

                  // Age
                  TextFormField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Age',
                      hintText: 'Enter your age',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Please enter your age' : null,
                  ),
                  SizedBox(height: 15),

                  // Height
                  TextFormField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Height (cm)',
                      hintText: 'Enter your height in cm',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Please enter your height' : null,
                  ),
                  SizedBox(height: 15),

                  // Weight
                  TextFormField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Weight (kg)',
                      hintText: 'Enter your weight in kg',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.isEmpty ? 'Please enter your weight' : null,
                  ),
                  SizedBox(height: 15),

                  // Gender
                  DropdownButtonFormField<String>(
                    value: _gender,
                    items: ['Male', 'Female', 'Other']
                        .map((gender) => DropdownMenuItem(value: gender, child: Text(gender)))
                        .toList(),
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                    validator: (value) => value == null ? 'Please select your gender' : null,
                  ),
                  SizedBox(height: 25),

                  // Submit Button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Collect data and proceed
                        print('Age: ${_ageController.text}');
                        print('Height: ${_heightController.text}');
                        print('Weight: ${_weightController.text}');
                        print('Gender: $_gender');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Tips3Class()));
                      }
                    },

                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
        ),
  ],
      )
    );
  }

}