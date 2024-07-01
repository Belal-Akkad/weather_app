import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/errors/failures_service.dart';
import 'package:weather_app/core/functions/get_background_image.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/features/home/data/repository/home_respository.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_state.dart';

class WeathersCubit extends Cubit<WeathersState> {
  WeathersCubit(this.homeRespository) : super(WeatherOfThisDayInitialState());
  HomeRespository homeRespository;
  int hour = DateTime.now().hour;
  String backgroungImage = getBackgroungImage(DateTime.now().hour);
  Future<void> fetchWeathers({required String cityName}) async {
    emit(WeathersLoadingState());
    Either<ServerFailure, List<WeatherModel>> result =
        await homeRespository.fetchWeathers(cityName: cityName);
    result.fold((failure) {
      emit(WeathersFailureState(errMessage: failure.errMessage));
    }, (weathers) {
      hour = DateTime.now()
          .add(Duration(
              seconds: weathers[0].timezone! -
                  DateTime.now().timeZoneOffset.inSeconds))
          .hour;
      backgroungImage = getBackgroungImage(hour);
      emit(WeathersSuccessState(weathers: weathers));
    });
  }
}
