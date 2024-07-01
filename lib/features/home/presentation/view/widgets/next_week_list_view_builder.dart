import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Container(
      width: double.infinity,
      height: 190.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return NextWeekItem(weather: weathers[index + 1]);
        },
      ),
    );
  }
}
