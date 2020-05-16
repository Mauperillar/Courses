
public class ManipulaCadenas {

	public static void main(String[] args) {
		String mi_nombre = "Mauricio";
		byte length_name = (byte) mi_nombre.length();
		char letra = mi_nombre.charAt(0); //Retorna la letra que está en cierta posición
		String rango_letras = mi_nombre.substring(0,3); // Retorna las letras que está en cierto rango con intervalo [)
		boolean is_equal = mi_nombre.equalsIgnoreCase("Mauricio");
		
		System.out.println(mi_nombre);
		System.out.println(length_name);
		System.out.println(letra);
		System.out.println(rango_letras);
		System.out.println(is_equal);

	}

}
