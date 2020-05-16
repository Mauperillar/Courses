import "package:flutter/material.dart";

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StateButton();
  }
}

class StateButton extends State<FloatingActionButtonGreen>{
  var _iconButtom = Icons.favorite_border;

  void onPressedFavorite(){
    setState(() {
      if(_iconButtom==Icons.favorite_border){
        _iconButtom = Icons.favorite;
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Agregaste a tus favoritos"), duration: Duration(milliseconds: 800)));
      }else{
        _iconButtom = Icons.favorite_border;
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Lo quitaste de tus favoritos"), duration: Duration(milliseconds: 800)));
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      mini: true,
      tooltip: "Favorite",
      child: Icon(_iconButtom),
      onPressed: onPressedFavorite,
    );
  }
}