import 'package:juego/src/cartas/magos/Mago.dart';
import 'package:juego/src/habilidadesExtra/GritoDeBatalla.dart';

//Implement Grito de batalla: Si jugaste un elemental el turno anterior, invoca una copia de este esbirro.
class AvalanchaAnimada extends Mago implements GritoDeBatalla{
  @override
  final name = 'AvalanchaAnimada';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Común';
  @override
  final kit = 'El Despertar de Galakrond';
  @override
  final clase = 'Mago';
  @override
  String get description => super.description;

  @override
  var _attackLevel = 7;
  @override
  var _life = 6;
  @override
  var _crystals = 7;
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
  void gritoDeBatalla() {
    // TODO: implement gritoDeBatalla
  }
}