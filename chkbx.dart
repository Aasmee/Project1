import 'package:flutter/material.dart';

Widget checkBox(
  String labelText, {
  required bool isChecked,
  required ValueChanged<bool?> onChanged,
}) {
  return Container(
    height: 35,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      children: [
        Transform.scale(
          scale: 0.8, // Scale down the checkbox
          child: Checkbox(
            value: isChecked,
            onChanged: onChanged,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(width: 0.1, color: Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: 6), // Reduced space between checkbox and text
          child: Text(labelText),
        ),
      ],
    ),
  );
}
