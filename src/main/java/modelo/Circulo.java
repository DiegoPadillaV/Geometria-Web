package modelo;

public class Circulo {
	
	private double diametro;

	public Circulo() {
		
	}
	
	public double calcularArea() {
		return Math.PI * Math.pow(getRadio(), 2);
	}
	
	public double calcularPerimetro() {
		return Math.PI * diametro;
	}
	
	public double getRadio() {
		return diametro / 2;
	}

	public Circulo(double diametro) {
		this.diametro = diametro;
	}

	public double getDiametro() {
		return diametro;
	}

	public void setDiametro(double diametro) {
		this.diametro = diametro;
	}
	
	
}
