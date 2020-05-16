import 'package:co/card_image_list.dart';
import 'package:co/gradient_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }

}