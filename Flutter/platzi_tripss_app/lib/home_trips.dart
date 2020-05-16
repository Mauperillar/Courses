import 'package:co/review_list.dart';
import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_app_bar.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4, "Es un hermoso lugar con buena vista al mar, buen servicio y una cultural regional excelente"),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}