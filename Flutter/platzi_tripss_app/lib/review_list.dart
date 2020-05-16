import 'review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget{
  List<Review> reviews = [
    Review("assets/img/bismark.png", "Edwin", "2 Review 2 Photos", 4, "Very good"),
    Review("assets/img/luisito_comunica.png", "Edwin2", "2 Review 2 Photos", 4, "Very good"),
    Review("assets/img/luisito_comunica.png", "Edwin3", "2 Review 2 Photos", 4, "Very good")
  ];
  // ReviewList(this.reviews)
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: reviews
      /*children: <Widget>[
        Review("assets/img/luisito_comunica.png", "Edwin", "2 Review 2 Photos", 4, "Very good"),
        Review("assets/img/luisito_comunica.png", "Edwin", "2 Review 2 Photos", 4, "Very good"),
        Review("assets/img/luisito_comunica.png", "Edwin", "2 Review 2 Photos", 4, "Very good")
      ],*/
    );
  }

}