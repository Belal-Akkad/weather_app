import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';
import 'package:weather_app/features/home/presentation/view/search_view.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Column(
          children: [
            Expanded(child: CustomHomeAppBar(cityName: weathers[0].name!)),
            const SizedBox(height: 30),
            Expanded(
              flex: 3,
                 child: WeatherDateSection(weather: weathers[0])),
            const SizedBox(height: 20),
            Expanded(
              flex: 8,
                child: WeatherMainSection(weather: weathers[0])),
            const SizedBox(height: 20),
            Expanded(
           flex: 5,
                child: NextWeekListViewBuilder(weathers: weathers)),
                
          ],
        ),
      ),
    );
  }
}
