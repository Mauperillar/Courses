//Clase internas, van dentro de los metodos y no lleva modificadores de acceso

package poo.timer;

import javax.swing.Timer;
import javax.swing.JOptionPane;
import java.awt.event.*;
import java.awt.Toolkit;
import java.util.*;

public class Temporizador2 {
	
	public static void main(String[] args) {
		Reloj miReloj = new Reloj();
		miReloj.enMarcha(3000, true);
		
		JOptionPane.showMessageDialog(null, "Pulsa aceptar para terminar");
	}

}

class Reloj{
	public void enMarcha(int intervalo, final boolean sonido) {
		class DameLaHora2 implements ActionListener{
			public void actionPerformed(ActionEvent event) {
				Date ahora = new Date();
				System.out.println(ahora);
				if(sonido) {
					Toolkit.getDefaultToolkit().beep();
				}
			}
		}
		
		ActionListener oyente = new DameLaHora2();
		Timer mitemporizador = new Timer(intervalo, oyente);
		
		mitemporizador.start();
	}
	
}