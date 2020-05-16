package graficos;

import java.awt.Dimension;
import java.awt.Image;
import java.awt.Toolkit;

import javax.swing.*;

public class CreateFrames {
	public static void main(String[] args) {
		Ventana ventana = new Ventana();
	}
}


class Ventana extends JFrame{
	public Ventana() {

		setVisible(true);
		setTitle("Mi primera ventana");
		//setExtendedState(MAXIMIZED_BOTH);//Abrir ventana maximizada
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		Toolkit mipantalla = Toolkit.getDefaultToolkit();
		Dimension tamanoPantalla = mipantalla.getScreenSize();//Obtener dimensiones de pantalla
		int alturaPantalla = tamanoPantalla.height;
		int anchoPantalla = tamanoPantalla.width;
		setSize(anchoPantalla/2,alturaPantalla/2);
		setLocationRelativeTo(null);
		
		Image miIcono = mipantalla.getImage("src/graficos/bote.png");
		setIconImage(miIcono);
	}
	
	
}