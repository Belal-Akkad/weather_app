import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/functions/build_out_lined_input_border.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
        hintStyle: const TextStyle(),
        hintText: 'Search New City',
        suffixIcon: const FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            Icons.search,
            size: 28,
            color: Colors.white,
          ),
        ),
        enabledBorder: buildOutLindeInputBorder(),
        focusedBorder: buildOutLindeInputBorder(),
      ),
    );
  }
}
