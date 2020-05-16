abstract class Cartas{
  String name;
  String type;
  String rarity;
  String kit;
  String clase;
  String description;
  
  int attackLevel;
  int life;
  int crystals;
  bool provocative;

  int get getAttack => attackLevel;
  set setAttack(int attackLevel) => this.attackLevel = attackLevel;
  int get getLife => life;
  int get getCrystals => crystals;
  bool get getProvocative => provocative;
  bool get isAlive => life>0;
  
  void attack();
  void receiveAttackLevel(int attackLevelReceived);

}