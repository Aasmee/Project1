// ignore_for_file: unused_element, unused_field, library_private_types_in_public_api

import 'package:flutter/material.dart';

class PropertyRentForm extends StatefulWidget {
  const PropertyRentForm({super.key});

  @override
  _PropertyRentFormState createState() => _PropertyRentFormState();
}

class _PropertyRentFormState extends State<PropertyRentForm> {
  int _selectedValue = 0;
  final _formKey = GlobalKey<FormState>();
  String? selectedRoom;
  List<String> listRoom = ["Private Room", "Partition Room", "Bed Space"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Property for Rent',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF004225),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Type of Room'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color.fromARGB(255, 221, 221, 221),
                      width: 1.3,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      hint: const Text(
                        "Type of Room",
                        style: TextStyle(color: Colors.grey),
                      ),
                      dropdownColor: Colors.grey,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                      iconSize: 20,
                      isExpanded: true,
                      value: selectedRoom,
                      onChanged: (newValue) {
                        setState(() {
                          selectedRoom = newValue;
                        });
                      },
                      items: listRoom.map((String valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              const Text('Description'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color.fromARGB(255, 221, 221, 221),
                    ),
                  ),
                  child: const TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Details about the Property',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(5),
                    ),
                  ),
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color.fromARGB(255, 221, 221, 221),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      'Add Images',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text('*Minimum 3 images',
                    style: TextStyle(color: Colors.red)),
              ),
              const Text('Address'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color.fromARGB(255, 221, 221, 221),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Disrtict,City,Street name/no',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color.fromARGB(255, 221, 221, 221),
                    ),
                  ),
                ),
              ),
              const Text('Room Details'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Number of Bedrooms'),
                  Container(
                    width: 60,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 221, 221, 221),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Number of Bathrooms'),
                  Container(
                    width: 60,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 221, 221, 221),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Number of Kitchen/dining'),
                  Container(
                    width: 60,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 221, 221, 221),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Rent Details'),
              Row(
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  const Text('Fixed Price'),
                  const SizedBox(width: 60),
                  Radio<int>(
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  const Text('Put up for an offer'),
                ],
              ),
              Row(
                children: [
                  const Text('Security Deposit'),
                  Radio<int>(
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  const Text('Yes'),
                  const SizedBox(width: 20),
                  Radio<int>(
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  const Text('No'),
                ],
              ),
              Row(
                children: [
                  const Text('Moving-out period notice'),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color.fromARGB(255, 221, 221, 221),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Time period before moving out',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  )
                ],
              ),
              const Text('Availability'),
              Column(
                children: [
                  Row(
                    children: [
                      const Text('Moving-out period notice'),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color.fromARGB(255, 221, 221, 221),
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Time period before moving out',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Moving-out period notice'),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color.fromARGB(255, 221, 221, 221),
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Time period before moving out',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Moving-out period notice'),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color.fromARGB(255, 221, 221, 221),
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Time period before moving out',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
