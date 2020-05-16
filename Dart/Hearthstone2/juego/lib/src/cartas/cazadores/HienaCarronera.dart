import 'package:juego/src/cartas/cazadores/Cazador.dart';
import 'package:juego/src/habilidades/AumentarVida.dart';

class HienaCarronera extends Cazador implements AumentarVida{
  @override
  final name = 'HienaCarronera';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Común';
  @override
  final kit = 'Clasico';
  @override
  final clase = 'Cazador';
  final raze = 'Bestia';

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
  void aumentarVida(){
    _life +=1;
  }
}