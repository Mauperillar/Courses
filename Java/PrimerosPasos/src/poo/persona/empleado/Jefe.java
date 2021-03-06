package poo.persona.empleado;

public class Jefe extends Trabajador implements Jefes{
	private float incentivo;
	
	public Jefe(String name) {
		super(name);
	}
	
	public Jefe(String name, float sueldo, float incentivo, int altaContratoYear, int altaContratoMonth, int altaContratoDay) {		
		super(name, sueldo, altaContratoYear,altaContratoMonth,altaContratoDay);
		this.incentivo = incentivo;
	}
	
	public void setIncentivo(float incentivo) {
		this.incentivo = incentivo;
	}
	
	public float getIncentivo() {
		return incentivo;
	}
	
	public float getSalary() {
		return incentivo + super.getSalary();
	}
	
	public String takeDecisions(String decision) {
		return "Un miembro de la direcci�n ha tomado la decisi�n de "+decision;
	}
	
	public float receiveBonus(float bonusMoney) {
		return Trabajador.bonusMoney + incentivo;
	}
}
