import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
import 'package:weather_app/core/utilities/constants.dart';
import 'package:weather_app/core/utilities/styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    required this.cityName,
  });
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(kLocationIcon),
        Text(
          cityName,
          style: Styles.style18,
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            AppRounter.routers.push('/SearchView');
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 25,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
