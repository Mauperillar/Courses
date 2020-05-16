package poo.persona.empleado;

import java.util.Arrays;

public class UsoEmpleado {

	public static void main(String[] args) {
		
		
		Trabajador mauricio = new Trabajador("Mauricio", 400000, 2022,12,02);
		mauricio.raiseSalary(10, true);
		
		Trabajador[] misEmpleados = new Trabajador[5];
		misEmpleados[0] = new Trabajador("Juan", 30000,2021,11,02);
		misEmpleados[1] = new Trabajador("Peter", 40000,2022,11,02);
		misEmpleados[2] = new Trabajador("Camilo", 30000,2021,11,02);
		
		Jefe gloria = new Jefe("Gloria Niño");
		gloria.setIncentivo(10000000);
		misEmpleados[3] = gloria;
		
		misEmpleados[4] = new Jefe("Jorge");
		Jefe jorge = (Jefe) misEmpleados[4];
		jorge.setIncentivo(1000000);
		
		Trabajador ditector_jefatura = new Jefe("Cludia");
		Comparable ejemplo = new Jefe("Claudia");
		
		if(ditector_jefatura instanceof Trabajador) {
			System.out.println("Es de tipo Empleado");
		}
		
		if(ejemplo instanceof Comparable) {
			System.out.println("Es de tipo Comparable");
		}
		
		Arrays.sort(misEmpleados);
		
		for(Trabajador e: misEmpleados) {
			System.out.println(e.getId());
		}
		
		

		
	}

}