package poo.persona;

public abstract class Persona {
	private static int countId = 0;
	private final int id = ++countId;
	private String name;
	private int edad;
	
	public Persona(String name) {
		this(name, -1);
	}
	
	public Persona(String name, int edad) {
		this.setName(name);
		this.setEdad(edad);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	public abstract String getDescription();

	public int getId() {
		return id;
	}
}
