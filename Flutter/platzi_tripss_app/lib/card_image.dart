import 'package:co/floating_action_button_green.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/img/river.jpeg";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: 350,
        width: 250,
        margin: EdgeInsets.only(top: 80.0, left: 20.0, right: 20),
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black, blurRadius: 15, offset: Offset(0.0,7.0))
          ]
        ));
    return Stack(
      alignment: Alignment(0.8, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
