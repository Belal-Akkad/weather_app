import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/home/presentation/manager/weathers_cubit/weathers_cubit.dart';

getLocation(BuildContext context) async {
  LocationPermission permission;

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }

  Position position = await Geolocator.getCurrentPosition();
  List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude, position.longitude);

  BlocProvider.of<WeathersCubit>(context)
      .fetchWeathers(cityName: placemarks[0].locality!);







}
