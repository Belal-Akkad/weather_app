import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/errors/failures_service.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/api_service.dart';
import 'package:weather_app/features/home/data/repository/home_respository.dart';

class HomeRespositoryImplementation implements HomeRespository {
  final ApiService apiService;

  HomeRespositoryImplementation(this.apiService);
  @override
  Future<Either<ServerFailure, List<WeatherModel>>> fetchWeathers(
      {required String cityName}) async {
    try {
      Map<String, dynamic> data =
          await apiService.getWeather(cityName: cityName);
      List<WeatherModel> weathers = getWeatherModels(data);

      return right(weathers);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }

  List<WeatherModel> getWeatherModels(Map<String, dynamic> data) {
    List<WeatherModel> weathers = [];
    weathers.add(WeatherModel.fromJson(data, 0));

    DateFormat dateFormat = DateFormat("HH");
    String x = dateFormat.format(DateTime.parse(data['list'][0]['dt_txt']));
    int count = 0;
    count = (24 - int.parse(x)) ~/ 3;
    int stopcondition = count + 32;
    for (count; count < stopcondition; count = count + 8) {
      weathers.add(WeatherModel.fromJson(data, count));
    }
    return weathers;
  }
}
