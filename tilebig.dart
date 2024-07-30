// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:internship_u2/Home/feature.dart';
import 'package:internship_u2/Home/verified.dart';

class TileBg extends StatefulWidget {
  const TileBg({super.key, required String title});

  @override
  _TileBgState createState() => _TileBgState();
}

class _TileBgState extends State<TileBg> {
  Widget tile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(145, 67, 67, 67).withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            )
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/room.jpg',
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 5,
                  left: 5,
                  child: VerifiedContainer(),
                ),
                const Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Rs.6999 Monthly',
                  style: TextStyle(fontSize: 12.5, color: Colors.black),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 10,
                    ),
                    SizedBox(width: 3.5),
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 8, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 3,
                  runSpacing: 3,
                  children: [
                    feature('Attached Bathroom'),
                    feature('Fully Furnished'),
                    feature('Internet/Wifi'),
                    feature('Near Mall/Supermarket'),
                    feature('Washing Machine'),
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        SizedBox(
                          height: 35,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCDE4FF),
                              foregroundColor:
                                  Colors.black, // Set the text color to white
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(7), // Border radius
                              ),
                            ),
                            label: const Text(
                              'Call',
                              style: TextStyle(fontSize: 14),
                            ),
                            icon: const Icon(
                              Icons.phone,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCDE4FF),
                              foregroundColor:
                                  Colors.black, // Set the text color to white
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(7), // Border radius
                              ),
                            ),
                            label: const Text(
                              'Chat',
                              style: TextStyle(fontSize: 14),
                            ),
                            icon: const Icon(
                              Icons.chat,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'View More',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 11,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red),
                        ),
                        Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          size: 18,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return tile();
  }
}

void main() {
  runApp(const MaterialApp(
    home: TileBg(title: 'Big Tile'),
  ));
}
