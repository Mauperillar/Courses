import java.util.*;

public class WhileExerciseAdivinaNum {

	public static void main(String[] args) {
		int aleatorio = (int) (Math.random() * 100);
		int intentos = 0;
		int numero;
		Scanner entrada = new Scanner(System.in);

		System.out.println("Adivina el n�mero");

		do {
			numero = entrada.nextInt();
			intentos++;

			if (numero > aleatorio) {
				System.out.println("El n�mero ingresado es mayor");

			} else {
				System.out.println("El n�mero ingresado es menor");
			}

			System.out.println("Adivina el n�mero");
			numero = entrada.nextInt();
		} while (numero != aleatorio);

		// O
		numero = entrada.nextInt();
		intentos++;
		while (numero != aleatorio) {
			if (numero > aleatorio) {
				System.out.println("El n�mero ingresado es mayor");

			} else {
				System.out.println("El n�mero ingresado es menor");
			}
			System.out.println("Adivina el n�mero");
			numero = entrada.nextInt();
			intentos++;
		}

		System.out.println("Perfecto, has adivinado el n�mero " + aleatorio + "\nN�mero de intentos: " + intentos);
	}

}
