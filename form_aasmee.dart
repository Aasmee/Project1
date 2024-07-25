import 'package:flutter/material.dart';

class PropertyRentForm extends StatefulWidget {
  const PropertyRentForm({super.key, required String title});

  @override
  _PropertyRentFormState createState() => _PropertyRentFormState();
}

class _PropertyRentFormState extends State<PropertyRentForm> {
  final _formKey = GlobalKey<FormState>();
  //bool _securityDeposit = false;
  final List<String> _facilities = [];
  String? selectedRoom;
  List<String> listRoom = ["Private Room", "Partition Room", "Bed Space"];
  List<String> listTenant = [
    "Female",
    "Male",
    "Couple",
    "Student",
    "Families",
    "Don't mind"
  ];
  String? _rentType; // To store the selected rent type
  String? _deposit; // To store the selected desposit

  Widget _buildTextFormField(String labelText,
      {int maxLines = 1, String hintText = ''}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.all(8.0),
          height: maxLines == 1 ? 50 : null,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 221, 221, 221)),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: AppBar(
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
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Type of Room'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 50,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
              _buildTextFormField('Description',
                  maxLines: 3, hintText: 'Details about the property'),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 221, 221, 221),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(16),
                  maximumSize: const Size.fromHeight(50), //Set height to 50
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
              _buildTextFormField('Address',
                  hintText: 'Disrtict,City,Street name/no'),
              Container(
                height: 150,
                color: Colors.grey[300],
                child: const Center(child: Text('Map Placeholder')),
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
              /*const Text('Room details',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              _buildTextFormField('Number of Bedrooms'),
              _buildTextFormField('Number of Bathrooms'),
              _buildTextFormField('Number of Kitchen'),*/
              const Text('Rent Details'),
              Row(
                children: [
                  Radio<String>(
                    value: 'Fixed Price',
                    groupValue: _rentType,
                    onChanged: (String? value) {
                      setState(() {
                        _rentType = value;
                      });
                    },
                  ),
                  const Text('Fixed Price'),
                  const SizedBox(width: 40),
                  Radio<String>(
                    value: 'Offer',
                    groupValue: _rentType,
                    onChanged: (String? value) {
                      setState(() {
                        _rentType = value;
                      });
                    },
                  ),
                  const Text('Put up for an offer'),
                ],
              ),
              Row(
                children: [
                  const Text('Security Deposit'),
                  Radio<String>(
                    value: 'Yes',
                    groupValue: _deposit,
                    onChanged: (String? value) {
                      setState(() {
                        _deposit = value;
                      });
                    },
                  ),
                  const Text('Yes'),
                  const SizedBox(width: 20),
                  Radio<String>(
                    value: 'No',
                    groupValue: _deposit,
                    onChanged: (String? value) {
                      setState(() {
                        _deposit = value;
                      });
                    },
                  ),
                  const Text('No'),
                ],
              ),
              /*const Text('Rent details',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Radio<String>(
                    value: 'Fixed Price',
                    groupValue: _rentType,
                    onChanged: (String? value) {
                      setState(() {
                        _rentType = value;
                      });
                    },
                  ),
                  const Text('Fixed Price'),
                  const SizedBox(width: 20),
                  Radio<String>(
                    value: 'Offer',
                    groupValue: _rentType,
                    onChanged: (String? value) {
                      setState(() {
                        _rentType = value;
                      });
                    },
                  ),
                  const Text('Offer'),
                ],
              ),
              _buildTextFormField('Rental Price'),
              _buildTextFormField('Security deposit'),
              Row(
                children: [
                  const Text('Security deposit:'),
                  Switch(
                    value: _securityDeposit,
                    onChanged: (value) {
                      setState(() {
                        _securityDeposit = value;
                      });
                    },
                  ),
                ],
              ),*/
              _buildTextFormField('Moving out notice period',
                  hintText: 'Enter notice period'),
              const Text('Availability',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              _buildTextFormField('Start Date', hintText: 'Enter start date'),
              _buildTextFormField('Minimum Stay',
                  hintText: 'Enter Minimum Stay'),
              _buildTextFormField('Maximum Stay',
                  hintText: 'Enter Maximum Stay'),
              const Text('Type of Tenants'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 50,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      hint: const Text(
                        "Type of Tenants",
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
                      items: listTenant.map((String valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Number of Tenants'),
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
              const Text('Facilities',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('Utilities:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  'Stable Electricity',
                  'Solar Electricity',
                  'Good Water Supply',
                  'Garbage Disposal',
                  'Internet/WiFi',
                  'TV Cable',
                  'Bed',
                  'A/C',
                  'Balcony',
                  'Installed buffet',
                  'Fully furnished',
                  'Attached bathroom'
                ].map((String facility) {
                  return FilterChip(
                    label: Text(facility),
                    selected: _facilities.contains(facility),
                    onSelected: (bool selected) {
                      setState(() {
                        if (selected) {
                          _facilities.add(facility);
                        } else {
                          _facilities.remove(facility);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              const Text('Room Amenities:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  'Utilities',
                  'Solar Electricity',
                  'Good Water Supply',
                  'Garbage Disposal',
                  'Internet/WiFi',
                  'TV Cable',
                  'Bed',
                  'A/C',
                  'Balcony',
                  'Installed buffet',
                  'Fully furnished',
                  'Attached bathroom'
                ].map((String facility) {
                  return FilterChip(
                    label: Text(facility),
                    selected: _facilities.contains(facility),
                    onSelected: (bool selected) {
                      setState(() {
                        if (selected) {
                          _facilities.add(facility);
                        } else {
                          _facilities.remove(facility);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              const Text('Building Amenities:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  'Parking',
                  'Near Park',
                  'Near Gym',
                  'Near Pool',
                  'Near Bus stop',
                  '4ft path',
                  '5ft path',
                  '6ft path',
                  '12ft path',
                  'Near Laundromat'
                ].map((String amenity) {
                  return Chip(label: Text(amenity));
                }).toList(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form submission logic
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color.fromARGB(255, 36, 101, 39),
                  foregroundColor: Colors.white, // Set the text color to white
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // No border radius
                  ),
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
