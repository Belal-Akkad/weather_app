import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';
import 'package:weather_app/features/home/presentation/view/widgets/custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
           BlocProvider.of<WeathersCubit>(context).backgroungImage,
          ),
        ),
      ),
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: getResponsiveSize(context, 24), vertical: getResponsiveSize(context, 18),),
        child: const Column(
          children: [
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}
