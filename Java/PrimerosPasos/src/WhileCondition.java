import javax.swing.*;
public class WhileCondition {

	public static void main(String[] args) {
		String clave = "juan";
		String pass = JOptionPane.showInputDialog("Ingrese la clave");
		
		while(clave.equals(pass)==false) {
			pass = JOptionPane.showInputDialog("Contrase�a incorreta, vuelva a intentar");
		}
		
		System.out.println("Bienvenido");
	}

}
