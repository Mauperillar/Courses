import javax.swing.JOptionPane;

public class forCondition {

	public static void main(String[] args) {
		
		for(int i = 0; i<10; i++) {
			System.out.println(i);
		}
		
		//Validate correo
		String correo = JOptionPane.showInputDialog("Ingrese el correo");
		int countArroba = 0;
		boolean punto = false;
		
		for(int i = 0; i<correo.length(); i++) {
			if(correo.charAt(i)=='@') {
				countArroba++;
			}
			if(correo.charAt(i)=='.') {
				punto = true;
			}
		}
		
		if(countArroba==1 && punto) {
			System.out.println("Correo correcto");
		}else {
			System.out.println("Correo incorrecto");
		}

	}

}
