import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtomPurple extends StatelessWidget {
  String buttomText = "Navigate";

  ButtomPurple(this.buttomText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Navegando pex"),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                begin: FractionalOffset(0.2, 0),
                end: FractionalOffset(0, 0.6),
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            buttomText,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: "Lato-Regular"),
          ),
        ),
      ),
    );
  }
}
