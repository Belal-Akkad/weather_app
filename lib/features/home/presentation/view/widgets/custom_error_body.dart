import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
import 'package:weather_app/core/utilities/styles.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_state.dart';

class CustomErrorBody extends StatelessWidget {
  const CustomErrorBody({
    super.key,
    required this.state,
  });
  final WeathersFailureState state;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
           BlocProvider.of<WeathersCubit>(context).backgroungImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 22.h,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      AppRounter.routers.push('/SearchView');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    state.errMessage,
                    style: Styles.style18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
