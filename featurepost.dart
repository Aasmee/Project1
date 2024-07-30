// ignore_for_file: unused_element, library_private_types_in_public_api, unused_field

import 'package:flutter/material.dart';
import 'package:internship_u2/Home/tilebig.dart';
import 'dropbtn.dart'; // Import the widget

class FeaturePost extends StatefulWidget {
  const FeaturePost({super.key, required this.title});
  final String title;

  @override
  _FeaturePostState createState() => _FeaturePostState();
}

class _FeaturePostState extends State<FeaturePost> {
  int _selectedIndex = 0;
  String? selectedLocation;
  String? selectedProperty;
  String? selectedRoom;
  final List<String> listLocation = [
    'Kathmandu',
    'Lalitpur',
    'Bhaktapur',
    'Others'
  ];
  final List<String> listProperty = [
    'Residential',
    'Commercial',
    'Room for rent'
  ];
  final List<String> listRoom = ['Private Room', 'Partition Room', 'Bed Space'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
            backgroundColor: const Color(0xFF004225),
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF6C8D7F),
              ),
              child: TextField(
                style: const TextStyle(color: Color(0xFFFFFFFF)),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 23,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: Color(0xFFFFFFFF),
                    ),
                    onPressed: () {},
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 9.0),
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.notifications,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonWidget(
                    items: listLocation,
                    hint: 'Location',
                    selectedValue: selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        selectedLocation = newValue;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonWidget(
                    items: listProperty,
                    hint: 'Property Type',
                    selectedValue: selectedProperty,
                    onChanged: (newValue) {
                      setState(() {
                        selectedProperty = newValue;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonWidget(
                    items: listRoom,
                    hint: 'Room Type',
                    selectedValue: selectedRoom,
                    onChanged: (newValue) {
                      setState(() {
                        selectedRoom = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Feature Post',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                TileBg(title: 'Big Tile'),
                TileBg(title: 'Big Tile'),
                TileBg(title: 'Big Tile')
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF004225),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                )
              ]),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: const Color.fromARGB(238, 124, 168, 139),
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Maps',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FeaturePost(title: 'Featured Post Page'),
  ));
}
