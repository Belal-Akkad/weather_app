import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/failures_service.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';

abstract class HomeRespository {
  Future<Either<ServerFailure, List<WeatherModel>>> fetchWeathers(
      {required String cityName});
}
