import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
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
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.white,
          size: getResponsiveSize(context, 28),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          cityName,
          style: Styles.style22(context),
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            AppRounter.routers.push('/SearchView');
          },
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: getResponsiveSize(context, 26),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
