import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/styles.dart';
import 'package:weather_app/core/functions/get_weather_icon.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';
import 'package:weather_app/features/home/presentation/view/widgets/main_temperature_item.dart';
import 'package:weather_app/features/home/presentation/view/widgets/weather_details.dart';

class WeatherMainSection extends StatelessWidget {
  const WeatherMainSection({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Image.asset(
              width: 90,
              height: 90,
              getWeatherIcon(
                weather,
                timeNow: BlocProvider.of<WeathersCubit>(context).hour,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              weather.weather![0].main,
              style: Styles.style40,
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: MainTemperatureItem(weather: weather),
          ),
        ),
        const SizedBox(height: 20),
        Flexible(
          flex: 3,
          child: WeatherDetails(
            weather: weather,
          ),
        )
      ],
    );
  }
}
