import 'package:juego/src/cartas/Cartas.dart';

class Mazo{
  var _numberOfCards =3;
  List<Cartas> _mazo;

/*
  ColectionCards(){
    //añadir las tres cartas al mazo
  }
*/
  void addCard(){
    //añadir una carta al mazo
    _numberOfCards++;
  }

  void removeCard(int idCard){
    //Remover carta
    _numberOfCards--;
  }

  Cartas usedCard(int idCard){
    removeCard(idCard);
    return _mazo[idCard];//Arreglar declaración
  }
}