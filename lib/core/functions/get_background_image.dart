import 'package:weather_app/core/utilities/constants.dart';

String getBackgroungImage(int x) {
  if (x >= 6 && x< 18) {
    return kMorningBackgroundImage;
  } else {
    return kNightBackgroundImage;

  }
}
