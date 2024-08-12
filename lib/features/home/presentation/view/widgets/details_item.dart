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
        Flexible(
          flex: 3,
          child: Image.asset(
            image,
            width: 40,
            height: 40,
          ),
        ),
        Flexible(
          flex: 2,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemName,
              style: Styles.style12,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              rate,
              style: Styles.style14,
            ),
          ),
        ),
      ],
    );
  }
}
