package graficos;

import java.awt.*;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;

import javax.swing.*;

public class Graphics2 {

	public static void main(String[] args) {
		MarcoConDibujos marco = new MarcoConDibujos();

	}

}

class MarcoConDibujos extends JFrame{
	public MarcoConDibujos() {
		setVisible(true);
		setTitle("Prueba con dibujos");
		setSize(500,500);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		LaminaConFiguras figura = new LaminaConFiguras();
		add(figura);
		
		
	}
}

class LaminaConFiguras extends JPanel{
	public void paintComponent(Graphics g) {
		//super.paintComponent(g);
		//g.drawRect(100, 100, 50, 50);
		
		Graphics2D g2 = (Graphics2D) g; 
		
		Rectangle2D rectangulo = new Rectangle2D.Double(100,100,200,200); //Double es una clase interna dentro de la clase Rectangle2D
		g2.draw(rectangulo); //Rectangulo es un objeto de la calse shape, ya que la clase a la que pertenece es una herencia de shape
		
		
		Ellipse2D elipse = new Ellipse2D.Double();
		elipse.setFrame(rectangulo);
		g2.draw(elipse);
		
		g2.draw(new Line2D.Double(100,100,300,300));
		
		double centroX = rectangulo.getCenterX();
		double centroY = rectangulo.getCenterY();
		System.out.println(centroY);
		
		Ellipse2D elipse2 = new Ellipse2D.Double();
		elipse2.setFrameFromDiagonal(centroX, centroY, 350, 350);
		g2.draw(elipse2);
	}
}
