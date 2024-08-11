import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_state.dart';
import 'package:weather_app/features/home/presentation/view/widgets/custom_error_body.dart';
import 'package:weather_app/features/home/presentation/view/widgets/custom_loading_body.dart';
import 'package:weather_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeViewBodyBuilder extends StatelessWidget {
  const HomeViewBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeathersCubit, WeathersState>(
      builder: (context, state) {
        if (state is WeathersSuccessState) {
          return HomeViewBody(weathers: state.weathers);
        } else if (state is WeathersFailureState) {
          return CustomErrorBody(state: state);
        } else {
          return const CustomLoadingBody();
        }
      },
    );
  }
}
