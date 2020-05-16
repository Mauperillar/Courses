import java.util.*;

public class IfConditional {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);

		System.out.println("Introduce tu edad");
		int edad = entrada.nextInt();

		if (edad < 18) {
			System.out.println("Es usted menor de edad");
		} else if (edad >= 18 && edad < 30) {
			System.out.println("Es usted adolecente");
		} else if (edad >= 30 && edad < 60) {
			System.out.println("Es usted adulto");
		} else {
			System.out.println("Es usted viejo");
		}

	}

}
