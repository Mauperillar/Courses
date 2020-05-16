import 'package:juego/src/cartas/magos/Mago.dart';
import 'package:juego/src/habilidades/AumentarAtaque.dart';

//Implement Tu poder de héroe inflige 2 p. de daño extra.
class AmplificadoraArcana extends Mago implements AumentarAtaque{
  @override
  final name = 'AmplificadoraArcana';
  @override
  final type = 'Esbirro';
  @override
  final rarity = 'Común';
  @override
  final kit = 'El Despertar de Galakrond';
  @override
  final clase = 'Mago';
  final raze = 'Elemental';
  @override
  String get description => super.description;

  @override
  var _attackLevel = 2;
  @override
  var _life = 5;
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

  @override
  void aumentarAtaque() {
    // TODO: implement aumentarAtaque
  }
}
