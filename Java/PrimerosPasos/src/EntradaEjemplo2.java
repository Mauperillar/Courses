import javax.swing.JOptionPane;

public class EntradaEjemplo2 {

	public static void main(String[] args) {
		String user_name = JOptionPane.showInputDialog("Introduce tu nombre");
		int edad = Integer.parseInt(JOptionPane.showInputDialog("Introduce edad, por favor"));
		
		System.out.println("Hola " + user_name + ". Tienes " + edad + " a�os");

	}

}