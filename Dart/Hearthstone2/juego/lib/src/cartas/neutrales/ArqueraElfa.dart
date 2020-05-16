import 'package:juego/src/cartas/neutrales/Neutral.dart';
import 'package:juego/src/habilidadesExtra/GritoDeBatalla.dart';

//Implement Grito de batalla: Inflige 1 p. de daño.
class ArqueraElfa extends Neutral implements GritoDeBatalla{
  @override
  final name = 'ArqueraElfa';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Gratis';
  @override
  final kit = 'Básico';
  @override
  final clase = 'Neutral';
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
  void gritoDeBatalla() {
    // TODO: implement gritoDeBatalla
  }
}