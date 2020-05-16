import 'package:juego/src/juego/Juego.dart';
import 'package:juego/src/juego/Jugador.dart';

import 'package:io/ansi.dart';
import 'package:prompts/prompts.dart' as prompts;


int selectEnemy(int enemysAlives) {
  var numEnemy = prompts.getInt('Numero del enemigo');

  while (numEnemy < 0 || numEnemy > enemysAlives - 1) {
    print('Numero de enemigo no encontrado');
    numEnemy = prompts.getInt('Numero del enemigo');
  }

  return numEnemy;
}

void main(){
  var juego = Juego();
  while (juego.numberOfPlayersAlive() > 1){
    juego.changePlayerTurn();
    juego.addCardToPlayerOnDuty();
    juego.battle();
  }
}
