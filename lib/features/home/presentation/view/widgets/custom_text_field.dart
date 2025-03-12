import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/functions/build_out_lined_input_border.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: getResponsiveSize(context, 16)),
      keyboardType: TextInputType.streetAddress,
      onSubmitted: (value) {
        if (value != '') {
          BlocProvider.of<WeathersCubit>(context).fetchWeathers(
            cityName: value,
          );
          AppRounter.routers.pop();
        }
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.4),
            fontSize: getResponsiveSize(context, 16)),
        hintText: 'Search New City',
        suffixIcon: Icon(
          Icons.search,
          size: getResponsiveSize(context, 28),
          color: Colors.white.withOpacity(0.4),
        ),
        enabledBorder: buildOutLindeInputBorder(),
        focusedBorder: buildOutLindeInputBorder(),
      ),
    );
  }
}
