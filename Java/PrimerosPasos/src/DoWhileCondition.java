import javax.swing.JOptionPane;

public class DoWhileCondition {
	public static void main(String[] arg) {
		String genero;
		
		do {
			genero = JOptionPane.showInputDialog("Genero: H/M");
		} while(genero.equalsIgnoreCase("H")==false && genero.equalsIgnoreCase("M")==false);
	}
}
