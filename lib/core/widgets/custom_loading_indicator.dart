import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: getBackgroundColor(context),
        color: Colors.white,
      ),
    );
  }

  Color getBackgroundColor(BuildContext context) {
    int timeNow = BlocProvider.of<WeathersCubit>(context).hour;

    if (timeNow >= 6 && timeNow < 18) {
      return const Color.fromARGB(255, 231, 222, 208);
    } else {
      return const Color.fromARGB(255, 47, 17, 216);
    }
  }
}
