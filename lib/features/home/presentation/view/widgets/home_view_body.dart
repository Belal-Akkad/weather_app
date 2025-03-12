import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';
import 'package:weather_app/features/home/presentation/view/widgets/custom_home_app_bar.dart';
import 'package:weather_app/features/home/presentation/view/widgets/next_week_list_view_builder.dart';
import 'package:weather_app/features/home/presentation/view/widgets/weather_date_section.dart';
import 'package:weather_app/features/home/presentation/view/widgets/weather_main_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.weathers});
  final List<WeatherModel> weathers;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            BlocProvider.of<WeathersCubit>(context).backgroungImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getResponsiveSize(context, 24),
            vertical: getResponsiveSize(context, 18)),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  CustomHomeAppBar(cityName: weathers[0].name!),
                  const Spacer(),
                  const SizedBox(height: 30),
                  WeatherDateSection(weather: weathers[0]),
                  SizedBox(height: getResponsiveSize(context, 30)),
                  WeatherMainSection(weather: weathers[0]),
                  const SizedBox(height: 40),
                  NextWeekListViewBuilder(weathers: weathers),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
