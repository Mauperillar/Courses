import java.util.*;

public class WhileExerciseAdivinaNum {

	public static void main(String[] args) {
		int aleatorio = (int) (Math.random() * 100);
		int intentos = 0;
		int numero;
		Scanner entrada = new Scanner(System.in);

		System.out.println("Adivina el número");

		do {
			numero = entrada.nextInt();
			intentos++;

			if (numero > aleatorio) {
				System.out.println("El número ingresado es mayor");

			} else {
				System.out.println("El número ingresado es menor");
			}

			System.out.println("Adivina el número");
			numero = entrada.nextInt();
		} while (numero != aleatorio);

		// O
		numero = entrada.nextInt();
		intentos++;
		while (numero != aleatorio) {
			if (numero > aleatorio) {
				System.out.println("El número ingresado es mayor");

			} else {
				System.out.println("El número ingresado es menor");
			}
			System.out.println("Adivina el número");
			numero = entrada.nextInt();
			intentos++;
		}

		System.out.println("Perfecto, has adivinado el número " + aleatorio + "\nNúmero de intentos: " + intentos);
	}

}
