import 'package:flutter/material.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';
import 'package:weather_app/core/utilities/styles.dart';
import 'package:weather_app/features/home/presentation/view/view_model/details_item_model.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.detailsItemModel
  });
 final DetailsItemModel detailsItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          detailsItemModel.image,
          fit: BoxFit.fill,
          width: getResponsiveSize(context, 28),
          height: getResponsiveSize(context, 28),
        ),
        const SizedBox(height: 5,),
        Text(
          detailsItemModel.itemName,
          style: Styles.style12(context),
        ),
        Text(
          detailsItemModel.rate,
          style: Styles.style18(context),
        ),
      ],
    );
  }
}
