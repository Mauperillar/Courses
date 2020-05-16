import 'package:co/buttom_purple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  var starNumber = 0;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.starNumber, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBoder = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato-Regular",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, starHalf, starBoder],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(descriptionPlace,
          style: const TextStyle(
              fontFamily: "Lato-Regular",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56575a))),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtomPurple("Navigate")],
    );
  }
}
