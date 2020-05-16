import 'package:co/card_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardImageList extends StatelessWidget {
  List<CardImage>  cards= [
    CardImage("assets/img/beach.webp"),
    CardImage("assets/img/beach_palm.webp"),
    CardImage("assets/img/mountain.jpeg"),
    CardImage("assets/img/mountain_stars.webp"),
    CardImage("assets/img/river.jpeg"),
  ];

  //CardImageList(this.cards);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: cards,
      ),
    );
  }
}
