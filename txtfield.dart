import 'package:flutter/material.dart';

Widget buildTextFormField(String labelText,
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
            contentPadding: const EdgeInsets.symmetric(
                vertical: 11.0), // Adjust vertical padding here
          ),
          maxLines: maxLines,
        ),
      ),
    ],
  );
}
