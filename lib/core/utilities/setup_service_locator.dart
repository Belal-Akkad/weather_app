import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/core/utilities/api_service.dart';
import 'package:weather_app/features/home/data/repository/home_respository_implementation.dart';

GetIt getIt = GetIt.instance;

void setupServiceLoacator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRespositoryImplementation>(
      HomeRespositoryImplementation(getIt.get<ApiService>()));
}
