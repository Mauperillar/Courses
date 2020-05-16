import 'package:juego/src/cartas/magos/Mago.dart';
import 'package:juego/src/habilidades/AumentarAtaque.dart';

class VermisDeMana extends Mago implements AumentarAtaque{
  @override
  final name = 'VermisDeMana';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Común';
  @override
  final kit = 'Clásico';
  @override
  final clase = 'Mago';
  @override
  String get description => super.description;

  @override
  var _attackLevel = 2;
  @override
  var _life = 2;
  @override
  var _crystals = 2;
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

  @override
  void aumentarAtaque(){
    //Aumenta vida +1 a una bestia aletoria en campo de batalla
  }
}