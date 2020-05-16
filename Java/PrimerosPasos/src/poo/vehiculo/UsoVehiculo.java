package poo.vehiculo;

import javax.swing.JOptionPane;

public class UsoVehiculo {

	public static void main(String[] args) {
		
		Coche cars1 = new Coche(); //Instanciar una clase
		cars1.setColor("White");
		cars1.setAsientos_cuero(JOptionPane.showConfirmDialog(null, "Desea asientos de cuero?","Agregar",JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
		cars1.setClimatizador(JOptionPane.showConfirmDialog(null, "Desea asientos de cuero?","Agregar",JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION);
		
		JOptionPane.showMessageDialog(null, cars1.isAsientos_cuero(), "Hello", JOptionPane.INFORMATION_MESSAGE);
		
		CarFurgoneta furgon = new CarFurgoneta(1000,1);
		furgon.setAsientos_cuero(true);
		furgon.setClimatizador(true);
	}

}
