import java.util.*;
public class EntradaEjemplo1 {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		
		System.out.println("Introduce un nombre, por favor");
		String nombre_usuario = entrada.nextLine();
		
		System.out.println("Introduce edad");
		int edad = entrada.nextInt();
		
		System.out.println("Hola " + nombre_usuario +". El a�o siguiente tendras la edad de "+(edad+1)+" a�os");
		
	}

}