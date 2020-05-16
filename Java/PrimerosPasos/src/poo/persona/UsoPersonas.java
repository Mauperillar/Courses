package poo.persona;

import poo.persona.empleado.*;
public class UsoPersonas {

	public static void main(String[] args) {
		Persona[] people = new Persona[2];
		people[0] = new Trabajador("Mauricio");
		people[1] = new Estudiante("Juan");

	}

}
