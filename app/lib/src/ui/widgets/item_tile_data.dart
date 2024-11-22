import 'package:flutter/material.dart';

class ItemTileData extends StatelessWidget {
  const ItemTileData({
    super.key,
    required this.employeeData,
    required this.label,
  });

  final String employeeData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
        ),
        Text(employeeData),
      ],
    );
  }
}
