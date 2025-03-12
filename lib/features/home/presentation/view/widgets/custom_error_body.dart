import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
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
            vertical: getResponsiveSize(context, 5),
            horizontal: getResponsiveSize(context, 10),
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
                    icon: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: getResponsiveSize(context, 22),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    state.errMessage,
                    style: Styles.style22(context),
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
