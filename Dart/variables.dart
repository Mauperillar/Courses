main() {
  int valInt = 1;
  double valDouble = 1;
  String valString = "Hola";
  bool valBool = true;
  
  dynamic cualquierTipo = "Hello";
  cualquierTipo = 3;
  
  print(cualquierTipo);
  
  //Interpolación de cadenas
  
  print('$valString mi nombre es Que pex' + "un simbolo más para agregar");
  
  print('''Que
  
  
  pex''');
  
  //Listas
  
  List array;
  array = [1,2,3,4, 'Hello'];
  array.add('Rosa');
  array.remove('Rosa');
  print(array);
  
  List<int> nums = [1,2,34];
  nums.removeLast();
  print(nums);
  
  List<int> nums2 = [3,4,5,6];
  
  nums.addAll(nums2);
  print(nums);
  
  nums.removeAt(2);
  print(nums);
  
  
  Set conjunto;
  conjunto = Set.from(['Manuel','Pedro','Dilan']);
  print(conjunto);
  
  conjunto.add('Erika');
  print(conjunto);
  
  conjunto.remove('Manuel');
  print(conjunto);
  
  Map<dynamic, dynamic> map;
  map = {'Primero':'Rojo', 2:'Verde'};
  print(map);
  
  map['otro'] = 1;
  print(map);
  
  map.remove('otro');
  print(map);
  print(map.isEmpty);
  
  final nombre = 'Mauricio'; //final String
  const numero = 1.323; //Constatnte a tiempo de compilación
  
  
  add();
  functionArrow(2,3);
  var n = functionArrowReturn(3, 8);
  
  List color = ['Rojo', 'Azul', 'Verde'];
  
  color.forEach((val){
    if(val=='Rojo'){
      print(val);
    }
  });
  
  paramsOpsPos(2);
  paramOpcNombrado(2, c:3, b:1);
}

void add(){
  print(2+3);
}

void addParams(int a, int b){
  print(a+b);
}

void functionArrow(int a, int b) => print(a+b);

int functionArrowReturn(int a, int b) => a+b;

//function con parametros opcionales según posición

void paramsOpsPos(int a, [int b]){
  print('Paramentro 1: $a');
  print('Paramentro 2: $b');
}

//function with params opcionales nombrados

void paramOpcNombrado(int a, {int b, int c=2}){
  print('Paramentro 1: $a');
  print('Paramentro 2: $b');
  print('Paramentro 3: $c');
}