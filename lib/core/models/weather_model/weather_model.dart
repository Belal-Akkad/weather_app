import 'package:equatable/equatable.dart';

import 'clouds.dart';
import 'main.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

class WeatherModel extends Equatable {
  final int? dt;
  final Main? main;
  final List<Weather>? weather;
  final Clouds? clouds;
  final Wind? wind;
  final Sys? sys;
  final String? dtTxt;
  final String? name;
  final int? timezone;
  const WeatherModel({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.sys,
    this.dtTxt,
    this.name,
    this.timezone,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json, int count) =>
      WeatherModel(
        timezone: json['city']['timezone'],
        name: json['city']['name'],
        dt: json['list'][count]['dt'] as int?,
        main: json['list'][count]['main'] == null
            ? null
            : Main.fromJson(
                json['list'][count]['main'] as Map<String, dynamic>),
        weather: (json['list'][count]['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
        clouds: json['list'][count]['clouds'] == null
            ? null
            : Clouds.fromJson(
                json['list'][count]['clouds'] as Map<String, dynamic>),
        wind: json['list'][count]['wind'] == null
            ? null
            : Wind.fromJson(
                json['list'][count]['wind'] as Map<String, dynamic>),
        sys: json['list'][count]['sys'] == null
            ? null
            : Sys.fromJson(json['list'][count]['sys'] as Map<String, dynamic>),
        dtTxt: json['list'][count]['dt_txt'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'dt': dt,
        'main': main?.toJson(),
        'weather': weather?.map((e) => e.toJson()).toList(),
        'clouds': clouds?.toJson(),
        'wind': wind?.toJson(),
        'sys': sys?.toJson(),
        'dt_txt': dtTxt,
        'name': name,
        'timezone':timezone,
      };

  @override
  List<Object?> get props {
    return [
      dt,
      main,
      weather,
      clouds,
      wind,
      sys,
      dtTxt,
      name,
      timezone,
    ];
  }
}
