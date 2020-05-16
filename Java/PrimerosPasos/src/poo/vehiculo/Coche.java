package poo.vehiculo;

public class Coche {
	private final int ctdRuedas = 4;
	private float sizeMotor;
	private float largo;
	private float ancho;
	private float pesoPlataforma;
	private String color;
	private float pesoTotal = 0;
	private boolean asientos_cuero, climatizador;

	public Coche() {
		setLargo(1500.2f);
		setAncho(500.3f);
		setSizeMotor(100.5f);
		setPesoPlataforma(100.5f);
	}

	public float getLargo() {
		return largo;
	}

	public void setLargo(float largo) {
		this.largo = largo;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public boolean isClimatizador() {
		return climatizador;
	}

	public void setClimatizador(boolean climatizador) {
		this.climatizador = climatizador;
	}

	public boolean isAsientos_cuero() {
		return asientos_cuero;
	}

	public void setAsientos_cuero(boolean asientos_cuero) {
		this.asientos_cuero = asientos_cuero;
	}

	public int getCtdRuedas() {
		return ctdRuedas;
	}

	public float getSizeMotor() {
		return sizeMotor;
	}

	public void setSizeMotor(float sizeMotor) {
		this.sizeMotor = sizeMotor;
	}

	public float getAncho() {
		return ancho;
	}

	public void setAncho(float ancho) {
		this.ancho = ancho;
	}

	public float getPesoPlataforma() {
		return pesoPlataforma;
	}

	public void setPesoPlataforma(float pesoPlataforma) {
		this.pesoPlataforma = pesoPlataforma;
	}

	public float getPesoTotal() {
		return pesoTotal;
	}

	public void setPesoTotal(float pesoTotal) {
		this.pesoTotal = pesoTotal;
	}
	
	

}
