import 'package:juego/src/cartas/neutrales/Neutral.dart';


class AsaltanteMurloc extends Neutral{
  @override
  final name = 'AsaltanteMurloc';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Gratis';
  @override
  final kit = 'Básico';
  @override
  final clase = 'Neutral';
  final raze= 'Múrloc';
  @override
  String get description => super.description;

  @override
  var _attackLevel = 2;
  @override
  var _life = 1;
  @override
  var _crystals = 1;
  @override
  final provocative = false;

  @override
  void attack(){
    //Atacar
  }

  @override
  void receiveAttackLevel(int attackLevelReceived){
    _life -= attackLevel;
    if(!isAlive){
      //Eliminar carta para el jugador
    }
  }
}