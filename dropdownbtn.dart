// dropdown_widget.dart
import 'package:flutter/material.dart';

Widget buildDropdownButton({
  required String labelText,
  required List<String> items,
  required String? selectedItem,
  required Function(String?) onChanged,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
            hint: Text(
              labelText,
              style: const TextStyle(color: Colors.grey),
            ),
            dropdownColor: Colors.white,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
            iconSize: 20,
            isExpanded: true,
            value: selectedItem,
            onChanged: onChanged,
            items: items.map((String valueItem) {
              return DropdownMenuItem<String>(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          ),
        ),
      ),
    ],
  );
}
