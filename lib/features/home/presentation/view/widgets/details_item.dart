import 'package:flutter/material.dart';
import 'package:weather_app/core/utilities/styles.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.image,
    required this.itemName,
    required this.rate,
  });
  final String image;
  final String itemName;
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          itemName,
          style: Styles.style14,
        ),
        Text(
          rate,
          style: Styles.style14,
        ),
      ],
    );
  }
}
