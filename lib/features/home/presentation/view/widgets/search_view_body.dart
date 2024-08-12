import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child:  Column(
          children: [
            Flexible(child: CustomTextField()),
          ],
        ),
      ),
    );
  }
}
