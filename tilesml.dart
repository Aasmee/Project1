// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:internship_u2/Home/feature.dart';
import 'package:internship_u2/Home/verified.dart';

class Tile extends StatefulWidget {
  final String title;

  const Tile({super.key, required this.title});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      feature('Attached Bathroom'),
                      feature('Fully Furnished'),
                      feature('Near Mall/Supermarket'),
                      feature('Internet/Wifi'),
                      feature('Washing Machine'),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return tile();
  }
}

void main() {
  runApp(const MaterialApp(
    home: Tile(title: 'Villa Details'),
  ));
}
