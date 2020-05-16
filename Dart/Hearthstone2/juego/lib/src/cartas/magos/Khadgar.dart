import 'package:juego/src/cartas/magos/Mago.dart';

//Implement Invocar doble esbirro cuando sean invocados
class Khadgar extends Mago{
  @override
  final name = 'Khadgar';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Legendaria';
  @override
  final kit = 'El Auge de las Sombras';
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
}