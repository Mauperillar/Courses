import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/luisito_comunica.png";
  String name = "Maurico P";
  String details = "1 Review 5 Photos";
  int starNumber = 0;
  String comment = "Good";

  Review(
      this.pathImage, this.name, this.details, this.starNumber, this.comment);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato-Regular", fontSize: 17.0),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBoder = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato-Regular",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)),
          ),
        ),
        Row(
          children: <Widget>[star, star, star, starHalf, starBoder],
        )
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato-Regular",
            fontSize: 13.0,
            fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
