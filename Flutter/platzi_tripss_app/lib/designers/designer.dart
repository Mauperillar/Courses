import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Designer extends StatelessWidget {
  String pathImage;
  String name;
  String experience;

  Designer(this.pathImage, this.name, this.experience);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(right: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final description = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              fontFamily: "Lato-Regular",
              fontWeight: FontWeight.w900,
              fontSize: 20),
        ),
        Text(experience)
      ],
    );

    final iconMessage = Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.message),
    );
    return Container(
      height: 100,
      margin: EdgeInsets.only(left: 20,right: 20, top: 2),
      child: Row(
        children: <Widget>[photo, description, iconMessage]
      ),
    );
  }
}
