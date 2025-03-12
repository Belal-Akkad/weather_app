import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utilities/app_rounter.dart';
import 'package:weather_app/core/utilities/setup_service_locator.dart';
import 'package:weather_app/features/home/data/repository/home_respository_implementation.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';

void main() async {
  setupServiceLoacator();
  runApp(
  DevicePreview(
    enabled: false,
    builder: (context) =>const  WeatherApp()
  ),
);

}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeathersCubit(getIt.get<HomeRespositoryImplementation>()),
      child: MaterialApp.router(
        
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRounter.routers,
      ),
    );
  }
}
