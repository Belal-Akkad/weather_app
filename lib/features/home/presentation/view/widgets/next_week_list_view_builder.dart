import 'package:flutter/material.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/features/home/presentation/view/widgets/next_week_item.dart';

class NextWeekListViewBuilder extends StatelessWidget {
  const NextWeekListViewBuilder({
    super.key,
    required this.weathers,
  });
  final List<WeatherModel> weathers;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getResponsiveSize(context, 30)),
      child: Container(
        height: getResponsiveSize(context, 180),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(getResponsiveSize(context, 22)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            4,
            (index) {
              return NextWeekItem(weather: weathers[index + 1]);
            },
          ),
        ),
      ),
    );
  }
}
