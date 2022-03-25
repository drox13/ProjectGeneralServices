package edu.uptc.model;

public enum EPlace {
	HOSE("Casa"), GARAGE("Garaje"), OFFICE("Oficina"), COMMERCIAL_PREMISES("Local Comercial"), 
	RESTAURANT("Restaurante"), SHOPPING_CENTRE("Centro Comercial");
	private String name;
	
	EPlace(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}