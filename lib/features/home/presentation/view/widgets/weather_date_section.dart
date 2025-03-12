import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/styles.dart';

class WeatherDateSection extends StatelessWidget {
  const WeatherDateSection({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(getFormattedDate(), style: Styles.style45(context)),
        const SizedBox(height: 15),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Updated as of  ${getFormattedUpdatedDate(weather.dtTxt!)}',
            style: Styles.style18(context),
          ),
        ),
      ],
    );
  }

  String getFormattedDate() {
    DateFormat dateFormat = DateFormat("MMMM  dd");
    String x = dateFormat.format(DateTime.now());
    return x;
  }

  String getFormattedUpdatedDate(String date) {
    DateFormat dateFormat = DateFormat("d/M/y  h:ss a");
    String x = dateFormat.format(DateTime.parse(date));
    return x;
  }
}
