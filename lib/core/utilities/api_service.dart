import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  final String baseUrl = 'https://api.openweathermap.org/data/2.5/forecast?';
  final String apiKey = 'f0b8db4f5df590cd7160e5fe0a8f5248';
  final String units = 'metric';
  final Dio dio;

  Future<Map<String, dynamic>> getWeather({required String cityName}) async {
    Response response =
        await dio.get('${baseUrl}q=$cityName&appid=$apiKey&units=$units');
    return response.data;
  }
}
