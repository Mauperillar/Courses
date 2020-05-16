import java.util.Scanner;

public class definirTypeVars {
	enum Talla {
		MINI("S"),MEDIANO("M"), GRANDRE("L"), MUY_GRANDE("XL");
		
		private String abreviatura;
		
		private Talla(String abreviatura) {
			this.abreviatura = abreviatura;
		}
		
		public String getAbreviatura() {
			return abreviatura;
		}
	};
	public static void main(String[] args) {
		//Talla s = Talla.MIN;
		//System.out.println(s);
		
		System.out.println("Ingrese talla: MINI, MEDIANO, GRANDE, MUY_GRANDE");
		Scanner entrada = new Scanner(System.in);
		String entradaTalla = entrada.nextLine().toUpperCase();
		
		Talla la_talla = Enum.valueOf(Talla.class, entradaTalla);
		System.out.println("Talla: "+ la_talla);
		System.out.println("Abreviatura: "+ la_talla.getAbreviatura());
		
		

	}

}
