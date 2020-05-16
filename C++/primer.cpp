#include <iostream>
#include <cstdlib>
#include <vector>
#include <string>
#include <sstream>

#include <iomanip>
#include <fstream>
using namespace std;

/*La solución a todos nuestros problemas :) por fin. Esto nos permitirá que la linea leida en el archivo, la podamos dividir, obteniendo
 en una array todos los valores, valores identificados por el espacio, esto delimitador (espacio) lo podemos cambiar en la variable delimitador
 
 https://es.stackoverflow.com/questions/64062/dividir-string-c-split
 */
 
vector<string> splitString(string str, char pattern) {

    int posInit = 0;
    int posFound = 0;
    string splitted;
    vector<string> resultados;

    while(posFound >= 0){
        posFound = str.find(pattern, posInit);
        splitted = str.substr(posInit, posFound - posInit);
        posInit = posFound + 1;
        resultados.push_back(splitted);
    }

    return resultados;
}


int stringToInt(string n){
	int numero;
	
	stringstream geek(n);
	geek >> numero;
	
	return numero;
}

char cambiarOrientacion(char actual, char cambio){
	char newOrientation;
	
	switch(actual){
		case 'N':
			if(cambio == 'I'){
				newOrientation = 'O';
			} else if(cambio == 'D'){
				newOrientation = 'E';
			}
		break;
		
		case 'E':
			if(cambio == 'I'){
				newOrientation = 'N';
			} else if(cambio == 'D'){
				newOrientation = 'S';
			}
		break;
		
		case 'S':
			if(cambio == 'I'){
				newOrientation = 'E';
			} else if(cambio == 'D'){
				newOrientation = 'O';
			}
		break;
		
		case 'O':
			if(cambio == 'I'){
				newOrientation = 'S';
			} else if(cambio == 'D'){
				newOrientation = 'N';
			}
		break;
	}
	
	return newOrientation;
}

int *advanceNextBox(int currentBox[2], char currentOrientation){
	
	int newPosition[2];
	switch(currentOrientation){
		case 'N':
			newPosition[0] = currentBox[0]-1;
			newPosition[1] = currentBox[1];
		break;
		
		case 'E':
			newPosition[0] = currentBox[0];
			newPosition[1] = currentBox[1]+1;
		break;
		
		case 'S':
			newPosition[0] = currentBox[0]+1;
			newPosition[1] = currentBox[1];
		break;
		
		case 'O':
			newPosition[0] = currentBox[0];
			newPosition[1] = currentBox[1]-1;
		break;
	}
	
	return newPosition;
}

bool isWinner(int currentBox[2], int meta[2]){
	if(currentBox[0] == meta[0] && currentBox[1] == meta[1]){
		return true;
	}else {
		return false;
	}
}

int main()
{
	ifstream robotFile;
	robotFile.open("ROBCOM.txt");
	
	if (!robotFile) {
    	cout << "Unable to open file datafile.txt";
    	exit(1);   // call system to stop
	}

		
	int limitInstructions = 40;
		
	int ctd_filas, ctd_columnas;
	int recinto[100][100];
	int filaActual = 0;
	int indexInstruction;
	int numInstructions;
	int realInstructionsLength;
	int posicionInicial[2], posicionFinal[2];
	char orientacion;
	char instructions[40];
	
	string line;
	vector<string> lineValues;
	char pattern = ' ';
	
	
	int currentLine = 1;

	while(getline (robotFile,line)){
		switch(currentLine){
			case 1:
				cout << "Definiendo tamanio de recinto: ";
				lineValues = splitString(line, pattern);
				
				ctd_filas = stringToInt(lineValues[0]);
				ctd_columnas = stringToInt(lineValues[1]);
				cout << ctd_filas << "x" << ctd_columnas << endl;
			
				cout << "Pasando a construir recinto" << endl;
				currentLine++;
				break;
				
			case 2:
				lineValues = splitString(line, pattern);
				for(int i = 0; i < lineValues.size(); i++){
					recinto[filaActual][i] = stringToInt(lineValues[i]);
					cout << recinto[filaActual][i];
				}
				cout <<endl;
				filaActual++;
				
				if(filaActual == ctd_filas){
					currentLine++;
					cout << "Construccion de recinto finalizada" << endl;
				}
				break;
			
			case 3:
				cout << "Definiendo posicion inicial del robot: ";
				lineValues = splitString(line, pattern);
				
				posicionInicial[0] = stringToInt(lineValues[0]);
				posicionInicial[1] = stringToInt(lineValues[1]);
				
				cout << "[" << posicionInicial[0] << "," << posicionInicial[1] << "]" << endl;
				currentLine++;
				break;
			
			case 4:
				cout << "Definiendo posicion final del robot: ";
				lineValues = splitString(line, pattern);
				
				posicionFinal[0] = stringToInt(lineValues[0]);
				posicionFinal[1] = stringToInt(lineValues[1]);
				
				cout << "[" << posicionFinal[0] << "," << posicionFinal[1] << "]" << endl;
				currentLine++;
				break;
			
			case 5:
				cout << "Definiendo orientacion del robot: ";
				orientacion = line[0];
				cout << orientacion << endl;
				currentLine++;
				break;
			
			case 6:
				cout << "Definiendo número de instrucciones: ";
				lineValues = splitString(line, pattern);
				numInstructions = stringToInt(lineValues[0]);
				cout << numInstructions << endl;
				currentLine++;
				break;
			
			case 7:
				cout << "Definiendo instrucciones: ";
				indexInstruction = 0;
				
				for(int i = 0; i < line.length(); i++){
					if(line[i] == 'A' || line[i] == 'I' || line[i] == 'D'){
						//Guarde la instrucción
						instructions[indexInstruction] = line[i];
						cout << instructions[indexInstruction] << " ";
						indexInstruction++;
					}else{
						//Continue si no es una intrucción valida
						continue;
					}
				}
				cout << endl;
				currentLine++;
				realInstructionsLength = indexInstruction;
				break;
		}

	}
	
	
	int posicionActual[2] = {posicionInicial[0], posicionInicial[1]};
	bool itsAlive = true;
	
	int valuePositionRecinto = recinto[posicionActual[0]][posicionActual[1]];
	
	if(valuePositionRecinto == 1){
		itsAlive = false;
	}
	
	indexInstruction = 0;
	
	while(itsAlive && indexInstruction<realInstructionsLength){
		if(instructions[indexInstruction] ==  'I' || instructions[indexInstruction] ==  'D'){
			orientacion = cambiarOrientacion(orientacion, instructions[indexInstruction]);
		}else if(instructions[indexInstruction] ==  'A'){
			
			posicionActual[0] = (advanceNextBox(posicionActual, orientacion))[0];
			posicionActual[1] = (advanceNextBox(posicionActual, orientacion))[1];
			
			if(posicionActual[0] == -1 || posicionActual[1] == -1){
				cout<<"El robot se ha estrellado"<<endl;
				itsAlive = false;
			}else{
				valuePositionRecinto = recinto[posicionActual[0]][posicionActual[1]];
				if(valuePositionRecinto == 1){
					cout<<"El robot ha muerto por una bomba"<<endl;
					itsAlive = false;
				}
				
			}	
		}else{
			cout<<"El robot ha muerto por una instrucción no valida, verificar que no hayan espacios al inicio o al final"<<endl;
			itsAlive = false;
		}
		
		indexInstruction++;
	}
	robotFile.close();
	
	
	
	bool winner;
	
	if(itsAlive){
		cout << "Aun vive"<<endl;
		cout << "PosiciOn actual ["<<posicionActual[0]<<","<<posicionActual[1]<<"]" <<endl;
		winner = isWinner(posicionActual, posicionFinal);
		
	}else{
		winner = false;
		cout << "PosiciOn actual ["<<posicionActual[0]<<","<<posicionActual[1]<<"]" <<endl;
	}
	
	
	
	ofstream outfile;
  	outfile.open("ROBCOM.txt", std::ios_base::app); // append instead of overwrite
  	
  	if(winner){
  		outfile << "\nC"; 
  		cout << "Gano, llego a su destino" <<endl;
	}else{
	  	outfile << "\nE"; 
	  	cout << "Perdio, no llego a su destino" <<endl;
	}
  	
  	outfile.close();
  	
    return 0;
}
