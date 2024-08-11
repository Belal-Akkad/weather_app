import 'package:flutter/material.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/styles.dart';

class MainTemperatureItem extends StatelessWidget {
  const MainTemperatureItem({
    super.key,
    required this.weather,
  });
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${weather.main!.temp!.round()}',
          style: Styles.style86
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'ºC',
            style: Styles.style24
          ),
        ),
      ],
    );
  }
}
