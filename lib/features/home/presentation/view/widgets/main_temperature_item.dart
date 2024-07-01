import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 25.w),
        Text(
          '${weather.main!.temp!.round()}',
          style: Styles.style86.copyWith(height: 1.5.h),
        ),
        Text(
          'ºC',
          style: Styles.style24.copyWith(height: 3.h),
        ),
      ],
    );
  }
}
