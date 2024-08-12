import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/styles.dart';
import 'package:weather_app/core/functions/get_weather_icon.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';

class NextWeekItem extends StatelessWidget {
  const NextWeekItem({
    super.key,
    required this.weather,
  });
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                getFormatedDate(weather.dtTxt!),
                style: Styles.style14,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: FittedBox(
                          fit: BoxFit.scaleDown,
              child: Image.asset(
                  alignment: Alignment.center,
                  getWeatherIcon(
                    weather,
                    timeNow: BlocProvider.of<WeathersCubit>(context).hour,
                  ),
                  width: 35,
                  height: 55),
            ),
          ),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '${weather.main!.temp!.round()}º',
                style: Styles.style18.copyWith(height: 0),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child:
                  Text(getSpeed(weather.wind!.speed!), style: Styles.style12),
            ),
          ),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'km/h',
                style: Styles.style14,
              ),
            ),
          )
        ],
      ),
    );
  }

  String getFormatedDate(String date) {
    DateFormat dateFormat = DateFormat("EE dd");
    String x = dateFormat.format(DateTime.parse(date));
    return x;
  }

  String getSpeed(double speed) {
    if (speed >= 0 && speed <= 5) {
      return '0-5';
    } else if (speed >= 5 && speed <= 10) {
      return '5-10';
    } else if (speed >= 10 && speed <= 15) {
      return '10-15';
    } else {
      return '15-20';
    }
  }
}
