// ignore_for_file: unused_element, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String? selectedLocation;
  String? selectedProperty;
  String? selectedRoom;
  List<String> listLocation = ["Kathmandu", "Lalitpur", "Bhaktapur", "Others"];
  List<String> listProperty = ["Residential", "Commercial", "Room for rent"];
  List<String> listRoom = ["Private Room", "Partition Room", "Bed Space"];

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color(0xFF004225),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        padding: const EdgeInsets.all(5),
                        hint: const Text(
                          "Location",
                          style: TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.grey,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        iconSize: 20,
                        isExpanded: true,
                        value: selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            selectedLocation = newValue;
                          });
                        },
                        items: listLocation.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: const TextStyle(color: Colors.white),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color(0xFF004225),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        padding: const EdgeInsets.all(5),
                        hint: const Text(
                          "Property Type",
                          style: TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.grey,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        iconSize: 20,
                        isExpanded: true,
                        value: selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            selectedLocation = newValue;
                          });
                        },
                        items: listProperty.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: const TextStyle(color: Colors.white),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color(0xFF004225),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        padding: const EdgeInsets.all(5),
                        hint: const Text(
                          "Room Type",
                          style: TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.grey,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        iconSize: 20,
                        isExpanded: true,
                        value: selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            selectedLocation = newValue;
                          });
                        },
                        items: listRoom.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: const TextStyle(
                                  color:
                                      Colors.white), // Set the color to white
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Feature Post',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(145, 67, 67, 67)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/room.jpg',
                              width: 130,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 5,
                              left: 5,
                              child: VerifiedContainer(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Room',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Text(
                                'Rs.6999 Monthly',
                                style: TextStyle(
                                  fontSize: 10.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Wrap(
                                spacing: 3,
                                runSpacing: 3,
                                children: [
                                  _buildFeatureChip('Attached Bathroom'),
                                  _buildFeatureChip('Fully Furnished'),
                                  _buildFeatureChip('Near Mall/Supermarket'),
                                  _buildFeatureChip('Internet/Wifi'),
                                  _buildFeatureChip('Washing Machine'),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3.5),
                                  Text(
                                    'Location',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(104, 67, 67, 67)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/villa.jpeg',
                              width: 130,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 5,
                              left: 5,
                              child: VerifiedContainer(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Villa',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Text(
                                'Rs.6999 Monthly',
                                style: TextStyle(
                                  fontSize: 10.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Wrap(
                                spacing: 3,
                                runSpacing: 3,
                                children: [
                                  _buildFeatureChip('Attached Bathroom'),
                                  _buildFeatureChip('Fully Furnished'),
                                  _buildFeatureChip('Near Mall/Supermarket'),
                                  _buildFeatureChip('Internet/Wifi'),
                                  _buildFeatureChip('Washing Machine'),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3.5),
                                  Text(
                                    'Location',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(104, 67, 67, 67)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/room.jpg',
                              width: 130,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 5,
                              left: 5,
                              child: VerifiedContainer(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Room',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Text(
                                'Rs.6999 Monthly',
                                style: TextStyle(
                                  fontSize: 10.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Wrap(
                                spacing: 3,
                                runSpacing: 3,
                                children: [
                                  _buildFeatureChip('Attached Bathroom'),
                                  _buildFeatureChip('Fully Furnished'),
                                  _buildFeatureChip('Near Mall/Supermarket'),
                                  _buildFeatureChip('Internet/Wifi'),
                                  _buildFeatureChip('Washing Machine'),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3.5),
                                  Text(
                                    'Location',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize
                    .min, // This will make the Row take minimum space required
                children: [
                  Text(
                    'View More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                      width:
                          1), // Add some spacing between the text and the icon
                  Icon(
                    Icons.expand_more_rounded,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(145, 67, 67, 67)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/room.jpg',
                              width: 130,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 5,
                              left: 5,
                              child: VerifiedContainer(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Room',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Text(
                                'Rs.6999 Monthly',
                                style: TextStyle(
                                  fontSize: 10.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Wrap(
                                spacing: 3,
                                runSpacing: 3,
                                children: [
                                  _buildFeatureChip('Attached Bathroom'),
                                  _buildFeatureChip('Fully Furnished'),
                                  _buildFeatureChip('Near Mall/Supermarket'),
                                  _buildFeatureChip('Internet/Wifi'),
                                  _buildFeatureChip('Washing Machine'),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3.5),
                                  Text(
                                    'Location',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(104, 67, 67, 67)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/villa.jpeg',
                              width: 130,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 5,
                              left: 5,
                              child: VerifiedContainer(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Villa',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Text(
                                'Rs.6999 Monthly',
                                style: TextStyle(
                                  fontSize: 10.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Wrap(
                                spacing: 3,
                                runSpacing: 3,
                                children: [
                                  _buildFeatureChip('Attached Bathroom'),
                                  _buildFeatureChip('Fully Furnished'),
                                  _buildFeatureChip('Near Mall/Supermarket'),
                                  _buildFeatureChip('Internet/Wifi'),
                                  _buildFeatureChip('Washing Machine'),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3.5),
                                  Text(
                                    'Location',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(104, 67, 67, 67)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/room.jpg',
                              width: 130,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 5,
                              left: 5,
                              child: VerifiedContainer(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Room',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Text(
                                'Rs.6999 Monthly',
                                style: TextStyle(
                                  fontSize: 10.5,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Wrap(
                                spacing: 3,
                                runSpacing: 3,
                                children: [
                                  _buildFeatureChip('Attached Bathroom'),
                                  _buildFeatureChip('Fully Furnished'),
                                  _buildFeatureChip('Near Mall/Supermarket'),
                                  _buildFeatureChip('Internet/Wifi'),
                                  _buildFeatureChip('Washing Machine'),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3.5),
                                  Text(
                                    'Location',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize
                    .min, // This will make the Row take minimum space required
                children: [
                  Text(
                    'View More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                      width:
                          1), // Add some spacing between the text and the icon
                  Icon(
                    Icons.expand_more_rounded,
                    color: Colors.red,
                  ),
                ],
              ),
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

  Widget _buildFeatureChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 0.8, color: const Color.fromARGB(213, 223, 223, 223)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.check,
            color: Colors.green,
            size: 13,
          ),
          const SizedBox(width: 1),
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 8.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage(title: 'Home');
      case 1:
        return const SavedPage();
      case 2:
        return const AddPage();
      case 3:
        return const MapsPage();
      case 4:
        return const ProfilePage();
      default:
        return const HomePage(title: 'Home');
    }
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Room",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Rs.6999 Monthly",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    _FeatureCheck(title: "Fully Furnished"),
                    SizedBox(width: 5),
                    _FeatureCheck(title: "Washing Machine"),
                    SizedBox(width: 5),
                    _FeatureCheck(title: "Attached Bathroom"),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    _FeatureCheck(title: "Near Mall/Supermarket"),
                    SizedBox(width: 5),
                    _FeatureCheck(title: "Internet/Wifi"),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 8),
                    Text("Location"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}

class _FeatureCheck extends StatelessWidget {
  final String title;

  const _FeatureCheck({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.check, color: Colors.green, size: 13),
          const SizedBox(width: 2),
          Text(title, style: const TextStyle(fontSize: 8.5)),
        ],
      ),
    );
  }
}

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF004225),
      child: const Center(child: Text('Cart')),
    );
  }
}

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF004225),
      child: const Center(child: Text('Add')),
    );
  }
}

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF004225),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF004225),
    );
  }
}

class VerifiedContainer extends StatelessWidget {
  const VerifiedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.verified,
            color: Colors.blue,
            size: 10,
          ),
          SizedBox(width: 2),
          Text(
            'Verified',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 7.5,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(title: 'Villa Details'),
  ));
}
