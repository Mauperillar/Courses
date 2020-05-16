package poo.timer;

import java.awt.Toolkit;
import java.awt.event.*;
import java.util.Date;

import javax.swing.JOptionPane;
import javax.swing.Timer;


public class PruebaTemporizador {

	public static void main(String[] args) {
		DameLaHora oyente = new DameLaHora();
		Timer miTemporizador = new Timer(1000, oyente);
		miTemporizador.start();
		
		JOptionPane.showMessageDialog(null, "Pulsa Aceptar para deterner");
		System.exit(0);
	}

}


class DameLaHora implements ActionListener{
	public void actionPerformed(ActionEvent event) {
		Date ahora = new Date();
		System.out.println(ahora);
		Toolkit.getDefaultToolkit().beep();
	}
}