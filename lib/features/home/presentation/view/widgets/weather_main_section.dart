import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
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
        Image.asset(
          width: getResponsiveSize(context, 70),
          height: getResponsiveSize(context, 70),
          getWeatherIcon(
            weather,
            timeNow: BlocProvider.of<WeathersCubit>(context).hour,
          ),
        ),
        Text(
          weather.weather![0].main,
          style: Styles.style40(context),
        ),
        const SizedBox(height: 10,),
        MainTemperatureItem(weather: weather),
         SizedBox(height: getResponsiveSize(context, 20)),
        WeatherDetails(
          weather: weather,
        )
      ],
    );
  }
}
