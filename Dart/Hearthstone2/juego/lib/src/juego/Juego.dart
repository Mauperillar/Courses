import 'package:juego/src/cartas/Cartas.dart';
import 'package:juego/src/juego/jugador.dart';
import 'package:prompts/prompts.dart' as prompts;
import 'dart:math';
class Juego{
  final numberOfPlayers = 2;
  List _jugadores;
  
  final crystalsToAdd =1;
  var rng = Random();
  var _playerTurn;
  int _playerToAttack;

  Juego(){
    for(var i=0; i<numberOfPlayers; i++){
      _jugadores[i] = Jugador(prompts.get('Nombre Jugador ${i+1}:'));
      _playerTurn = rng.nextInt(numberOfPlayers);
      upgradePlayerToAttack();
    }
  }
 
  int numberOfPlayersAlive(){
    var playersAlive = _jugadores.where((j) => j.isAlive).toList();
    return playersAlive.length;
  }

  void upgradePlayerTurn(){
    _playerTurn = _playerTurn==1? 0:1;
  }

  void upgradePlayerToAttack(){
    _playerToAttack = _playerTurn==1? 0:1;
  }

  void addCardToPlayerOnDuty(){
    //var card = Carta aleatoria del mazo
    //_jugadores[_playerTurn].addCard(card);
  }

  void changePlayerTurn(){
    upgradePlayerTurn();
    upgradePlayerToAttack();

    _jugadores[_playerTurn].restoreCrystals();
    _jugadores[_playerTurn].addCrystal(crystalsToAdd);
  }

  void battle(){
    _jugadores[_playerTurn].putCardsInBattle();

    _jugadores[_playerTurn].attack(_jugadores[_playerToAttack]);
    upgradePlayerTurn();
    upgradePlayerToAttack();
  }
}