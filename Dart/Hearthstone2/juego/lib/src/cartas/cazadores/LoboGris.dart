import 'package:juego/src/cartas/cazadores/Cazador.dart';
import 'package:juego/src/habilidades/AumentarAtaque.dart';

class LoboGris extends Cazador implements AumentarAtaque{
  @override
  final name = 'LoboGris';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Gratis';
  @override
  final kit = 'Básico';
  @override
  final clase = 'Cazador';
  @override
  String get description => super.description;

  @override
  var _attackLevel = 1;
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

  @override
  void aumentarAtaque(){
    //Aumenta ataque +1 a una bestia aletoria en campo de batalla
  }
}