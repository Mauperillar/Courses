package poo.persona;

public class Estudiante extends Persona{
	public String studyLevel;
	public Estudiante(String name) {
		super(name);
	}
	
	public String getDescription() {
		return "I am a student";
	}

	public String getStudyLevel() {
		return studyLevel;
	}

	public void setStudyLevel(String studyLevel) {
		this.studyLevel = studyLevel;
	};
}