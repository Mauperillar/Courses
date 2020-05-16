import 'package:juego/src/cartas/cazadores/Cazador.dart';
import 'package:juego/src/habilidades/AumentarAtaque.dart';
import 'package:juego/src/habilidades/AumentarVida.dart';

class MaestroDeCanes extends Cazador implements AumentarAtaque, AumentarVida{
  @override
  final name = 'Jabinferno';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Común';
  @override
  final kit = 'Cenizas de Terrallende';
  @override
  final clase = 'Cazador';
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

  @override
  void aumentarAtaque(){
    //Aumenta ataque +1 a una bestia aletoria en campo de batalla
  }

  @override
  void aumentarVida(){
    //Aumenta vida +1 a una bestia aletoria en campo de batalla
  }
}