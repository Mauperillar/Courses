import 'dart:math';
import 'package:juego/src/cartas/Cartas.dart';
import 'package:prompts/prompts.dart' as prompts;

class Jugador {
  String _name;
  var _life = 28;
  var _crystals = 1;
  var _usedCrystals = 0;
  List<Cartas> _availableCards;
  var provocativeCard = false;
  var goingToAttack = false;
  var _countCards = 0;
  List<Cartas> cardsInBattle;
  List<int> critalsCars;

  Jugador(this._name) {
    //new cards
  }

  String get getName => _name;
  bool get isAlive => _life>0;
  bool get getGoingToAttack => goingToAttack;

  void addCard(Cartas carta){
    _availableCards.add(carta);
  }

  void toPlay() {
    cardsInBattle.forEach((key, value) => value['ready'] = true);
    _crystals += 1 + _usedCrystals;
    _usedCrystals = 0;

    showAvailableCards();
    putCardsInBattle();
    refreshProvocativeCard();
    if (cardsInBattle.isNotEmpty) goingToAttack = prompts.getBool('Quiere Atacar?');
  }

  void putCardsInBattle() {
    bool poner;
    do {
      if (puedePonerCarta()) {
        poner = prompts.getBool('Ingrese número de carta');
        if (poner) selectAvailableCards();
      } else {
        poner = false;
      }
    } while (poner);
  }

  bool puedePonerCarta() {
    _availableCards.forEach((key, value) => critalsCars.add(value['crytals']));
    if (_crystals <= critalsCars.reduce(max)) {
      return true;
    } else {
      print('No alcanza los cristales para seleccionar una carta');
      return false;
    }
  }

  Map selectAvailableCards() {
    var numberCard = int.parse(prompts.get('Ingrese número de carta'));
    while (!_availableCards.containsKey(numberCard) &&
        _crystals < _availableCards[numberCard]['crystals']) {
      if (!_availableCards.containsKey(numberCard)) print('Número de carta no valido \n');
      if (_crystals < _availableCards[numberCard]['crystals']) print('Cristales insuficientes \n');
      numberCard = prompts.getInt('Ingrese número de carta');
    }

    _usedCrystals += _availableCards[numberCard]['crystals'];
    _crystals -= _availableCards[numberCard]['crystals'];

    cardsInBattle[numberCard] = _availableCards[numberCard];
    _availableCards.remove(numberCard);

    return cardsInBattle[numberCard];
  }

  Map selectCardsInBattle() {
    var numberCardBattle;
    var cardValid = false;
    do {
      numberCardBattle = prompts.getInt('Número de carta a usar');

      if(!cardsInBattle.containsKey(numberCardBattle)){
        print('Carta no valida, seleccione otra');
        cardValid = false;
      }else if(!cardsInBattle[numberCardBattle]['ready']){
        print('Carta no valida, seleccione otra');
        cardValid = false;
      }else{
        cardValid = true;
      }
      
    } while (!cardValid);


    return cardsInBattle[numberCardBattle];
  }

  void refreshProvocativeCard() {
    cardsInBattle.forEach((key, value) {
      if (value['provocative']) provocativeCard = true;
    });
  }

  void showAvailableCards() {
    print('Numero     Nombre    Cristales   Ataque    Vida');
    _availableCards.forEach((key, value) => print(
        '${key}   ${value['name']}    ${value['crystals']}    ${value['attack']}   ${value['life']}'));
  }

  void showCardsInBattle() {
    print('Numero     Nombre    Cristales   Ataque    Vida    Disponible');
    cardsInBattle.forEach((key, value) => print(
        '${key}   ${value['name']}    ${value['crystals']}    ${value['attack']}   ${value['life']}   ${value['ready']}'));
  }

void attack(Jugador enemy) {
    int objetivo;
    if (!enemy.provocativeCard)
      objetivo = prompts.getInt('Atacar a \n1: Enemigo n\2: Carta');
    objetivo ??= 2;

    if (objetivo == 1) attackEnemy(enemy);
    if (objetivo == 2) attackEnemyCard(enemy);
  }

  void attackEnemy(Jugador enemy) {
    print('Cartas disponibles a usar');
    showCardsInBattle();
    var cartaSeleccionada = selectCardsInBattle();
    enemy.lowerLife(cartaSeleccionada['attack']);
    cartaSeleccionada['ready'] = false;
  }

  void attackEnemyCard(Jugador enemy) {
    // Seleccionar carta del enemigo a atacar
    // Bajar vida de la carta seleccionada
    // Disminuir vida de nuestra carta

  }

  void lowerLife(int attackReceived) {
    _life -= attackReceived;
  }

  void riseLife(int healing) {
    _life += healing;
  }

}