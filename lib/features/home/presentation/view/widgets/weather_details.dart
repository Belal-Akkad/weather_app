import 'package:flutter/material.dart';
import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/constants.dart';
import 'package:weather_app/features/home/presentation/view/view_model/details_item_model.dart';
import 'package:weather_app/features/home/presentation/view/widgets/details_item.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    super.key,
    required this.weather,
  });
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DetailsItem(
          detailsItemModel: DetailsItemModel(image: kHumidityIcon,
          itemName: 'HUMIDITY',
          rate: '${weather.main!.humidity} %',),
          
        ),
        DetailsItem(


          detailsItemModel: DetailsItemModel(   image: kWindIcon,
          itemName: 'WIND',
          rate: '${weather.wind!.speed} km/h',),
       
        ),
        DetailsItem(
          detailsItemModel: DetailsItemModel(     itemName: 'FEELS LIKE',
          image: kFeelsLikeIcon,
          rate: '${weather.main!.feelsLike!.round()}°',),
     
        ),

      ],
    );
  }
}
