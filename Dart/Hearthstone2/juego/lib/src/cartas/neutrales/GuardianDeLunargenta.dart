import 'package:juego/src/cartas/neutrales/Neutral.dart';

//Implement Escudo divino: No recibe el primer ataque.
class GuardianDeLunargenta extends Neutral{
  @override
  final name = 'GuardianDeLunargenta';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Común';
  @override
  final kit = 'Clásico';
  @override
  final clase = 'Neutral';
  @override
  String get description => super.description;

  @override
  var _attackLevel = 4;
  @override
  var _life = 3;
  @override
  var _crystals = 3;
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