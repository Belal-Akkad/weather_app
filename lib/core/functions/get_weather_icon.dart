import 'package:weather_app/core/models/weather_model/weather_model.dart';
import 'package:weather_app/core/utilities/constants.dart';

String getWeatherIcon( WeatherModel model ,{required int timeNow}) {
  if (model.weather![0].main == 'Thunderstorm') {
    if ( timeNow>= 6 && timeNow < 18) {
      return kThunderStormAmIcon;
    } else {
      return kThunderStormPmIcon;
    }
  } else if (model.weather![0].main == 'Drizzle') {
    if (timeNow >= 6 && timeNow < 18) {
      return kDrizzleAmIcon;
    } else {
      return kDrizzlepmIcon;
    }
  } else if (model.weather![0].main == 'Rain') {
    if (model.weather![0].description == 'light rain' ||
        model.weather![0].description == 'moderate rain') {
      if (timeNow >= 6 && timeNow < 18) {
        return kLightRainAmIcon;
      } else {
        return kLightRainPmIcon;
      }
    } else {
      if (timeNow >= 6 && timeNow < 18) {
        return kHeavyRainAmIcon;
      } else {
        return kHeavyRainPmIcon;
      }
    }
  } else if (model.weather![0].main == 'Snow') {
    if (model.weather![0].description == 'light snow') {
      if (timeNow >= 6 && timeNow < 18) {
        return kLightSnowAmIcon;
      } else {
        return kLightSnowpmIcon;
      }
    } else if (model.weather![0].description == 'snow' ||
        model.weather![0].description == 'heavy snow') {
      if (timeNow >= 6 && timeNow < 18) {
        return kSnowAmIcon;
      } else {
        return kSnowPmIcon;
      }
    } else {
      if (timeNow >= 6 && timeNow < 18) {
        return kSleetAmIcon;
      } else {
        return kSleetPmIcon;
      }
    }
  } else if (model.weather![0].main == 'Clouds' &&
      model.weather![0].description == '	few clouds') {
    if (timeNow >= 6 && timeNow < 18) {
      return kFewCloudsAmIcon;
    } else {
      return kFewCloudspmIcon;
    }
  } else if (model.weather![0].main == 'Clouds') {
    if (timeNow >= 6 && timeNow < 18) {
      return  kCloudsAmIcon;
    } else {
      return kCloudspmIcon;
    }
  } else if (model.weather![0].main == 'Clear') {
    if (timeNow >= 6 && timeNow < 18) {
      return kClearAmIcon;
    } else {
      return kClearpmIcon;
    }
  } else if (model.weather![0].main == 'Tornado') {
    return kTornadoIcon;
  } else {
    if (timeNow >= 6 && timeNow < 18) {
      return kFogAmIcon;
    } else {
      return kFogPmIcon;
    }
  }
}
