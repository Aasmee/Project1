import 'package:flutter/material.dart';

Widget horitxt(String labelText) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(labelText),
      Container(
        width: 120,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 221, 221, 221),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ],
  );
}
