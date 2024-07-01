import 'package:weather_app/core/models/weather_model/weather_model.dart';

abstract class WeathersState {}

class WeatherOfThisDayInitialState extends WeathersState {}

class WeathersLoadingState extends WeathersState {}

class WeathersSuccessState extends WeathersState {
  final List<WeatherModel> weathers;

  WeathersSuccessState({required this.weathers});
}

class WeathersFailureState extends WeathersState {
  final String errMessage;

  WeathersFailureState({required this.errMessage});
}
